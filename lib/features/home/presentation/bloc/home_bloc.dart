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

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetProductsListUseCase getProductsListUseCase;
  final Box<ProductModel> favoritesBox;

  HomeBloc(
    this.getProductsListUseCase,
    this.favoritesBox,
  ) : super(HomeState(favorites: favoritesBox.values.toList())) {
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
              getProductsListFailures: failure));
        },
        (model) {
          emit(state.copyWith(
            getProductsListState: RequestStatus.success,
            productsResponseModel: model,
          ));
        },
      );
    });

    on<ToggleFavoriteEvent>((event, emit) async {
      if (favoritesBox.containsKey(event.product.id)) {
        await favoritesBox.delete(event.product.id);
      } else {
        await favoritesBox.put(event.product.id, event.product);
      }

      emit(state.copyWith(favorites: favoritesBox.values.toList()));
    });

    on<RefreshFavoritesEvent>((event, emit) {
      emit(state.copyWith(favorites: favoritesBox.values.toList()));
    });
  }
}
