import 'package:carecomm_test/config/routes/routes_config.dart';
import 'package:carecomm_test/core/enums/request_status.dart';
import 'package:carecomm_test/core/util/custom_toast_widget.dart';
import 'package:carecomm_test/features/home/presentation/bloc/home_bloc.dart';
import 'package:carecomm_test/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:carecomm_test/features/home/presentation/views/widgets/grid_view_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    handleGetProductsEvent();
  }

  /// Triggers the `GetProductsListEvent` to load the product list from the API
  handleGetProductsEvent() {
    var homeBloc = BlocProvider.of<HomeBloc>(context);

    // Only fetch products if they haven't been loaded or the list is empty
    if (homeBloc.state.productsResponseModel == null ||
        homeBloc.state.productsResponseModel!.properties!.isEmpty) {
      homeBloc.add(GetProductsListEvent());
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Refresh the favorites list every time the widget rebuilds
    BlocProvider.of<HomeBloc>(context).add(RefreshFavoritesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.getProductsListState == RequestStatus.failure) {
          myToast(
            text: state.getProductsListFailures?.message ?? '',
            bgColor: Colors.red,
            textColor: Colors.white,
          );
        }
      },
      builder: (context, state) {
        var products = state.productsResponseModel?.properties ?? [];

        if (state.getProductsListState == RequestStatus.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return Column(
          children: [
            CustomAppBar(
              text: "Products",
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(12.r),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  var product = products[index];

                  var favorites = context.watch<HomeBloc>().state.favorites;
                  bool isFavorite =
                      favorites.any((fav) => fav.id == product.id);

                  return GridViewCardItem(
                    product: product,
                    goToDetails: () {
                      GoRouter.of(context).pushNamed(
                        RoutesNames.productDetailsView,
                        extra: product,
                      );
                    },
                    saveToFavoriteFunc: () {
                      BlocProvider.of<HomeBloc>(context)
                          .add(ToggleFavoriteEvent(product));
                    },
                    isFavorite: isFavorite,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
