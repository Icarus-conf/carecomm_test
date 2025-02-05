part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestStatus.init) RequestStatus getProductsListState,
    Failures? getProductsListFailures,
    ProductsResponseModel? productsResponseModel,
    @Default([]) List<ProductModel> favorites,
  }) = _HomeState;
}
