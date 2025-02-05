part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getProductsListEvent() = GetProductsListEvent;
  const factory HomeEvent.toggleFavoriteEvent(ProductModel product) =
      ToggleFavoriteEvent;
  const factory HomeEvent.refreshFavoritesEvent() = RefreshFavoritesEvent;
}
