import 'package:carecomm_test/core/enums/request_status.dart';
import 'package:carecomm_test/core/error/failures.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:carecomm_test/features/home/domain/usecases/get_products_list_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

/// Bloc responsible for handling home-related events and state management.
///
/// This Bloc interacts with the `GetProductsListUseCase` to fetch products
/// and manages a list of favorite products stored in Hive.
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// Use case for fetching the product list.
  final GetProductsListUseCase getProductsListUseCase;

  /// Hive storage for storing and managing favorite products.
  final Box<ProductModel> favoritesBox;

  HomeBloc(
    this.getProductsListUseCase,
    this.favoritesBox,
  ) : super(HomeState(favorites: favoritesBox.values.toList())) {
    /// Handles the event to fetch the product list from the API.
    ///
    /// If the product list is already loaded, it prevents unnecessary API calls.
    /// Otherwise, it triggers the loading state and fetches the data.
    on<GetProductsListEvent>((event, emit) async {
      if (state.productsResponseModel != null &&
          state.productsResponseModel!.properties!.isNotEmpty) {
        return;
      }

      emit(state.copyWith(
        getProductsListState: RequestStatus.loading,
      ));

      var result = await getProductsListUseCase();
      result.fold(
        (failure) {
          emit(state.copyWith(
            getProductsListState: RequestStatus.failure,
            getProductsListFailures: failure,
          ));
        },
        (model) {
          emit(state.copyWith(
            getProductsListState: RequestStatus.success,
            productsResponseModel: model,
          ));
        },
      );
    });

    /// Handles the event to toggle a product as a favorite.
    ///
    /// If the product already exists in favorites, it is removed.
    /// Otherwise, it is added to the favorites list.
    on<ToggleFavoriteEvent>((event, emit) async {
      if (favoritesBox.containsKey(event.product.id)) {
        await favoritesBox.delete(event.product.id);
      } else {
        await favoritesBox.put(event.product.id, event.product);
      }

      emit(state.copyWith(favorites: favoritesBox.values.toList()));
    });

    /// Handles the event to refresh the list of favorite products.
    ///
    /// This ensures the UI is updated whenever favorites change.
    on<RefreshFavoritesEvent>((event, emit) {
      emit(state.copyWith(favorites: favoritesBox.values.toList()));
    });
  }
}
