// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductsListEvent,
    required TResult Function(ProductModel product) toggleFavoriteEvent,
    required TResult Function() refreshFavoritesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductsListEvent,
    TResult? Function(ProductModel product)? toggleFavoriteEvent,
    TResult? Function()? refreshFavoritesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductsListEvent,
    TResult Function(ProductModel product)? toggleFavoriteEvent,
    TResult Function()? refreshFavoritesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsListEvent value) getProductsListEvent,
    required TResult Function(ToggleFavoriteEvent value) toggleFavoriteEvent,
    required TResult Function(RefreshFavoritesEvent value)
        refreshFavoritesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsListEvent value)? getProductsListEvent,
    TResult? Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult? Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsListEvent value)? getProductsListEvent,
    TResult Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductsListEvent,
    required TResult Function(ProductModel product) toggleFavoriteEvent,
    required TResult Function() refreshFavoritesEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductsListEvent,
    TResult? Function(ProductModel product)? toggleFavoriteEvent,
    TResult? Function()? refreshFavoritesEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductsListEvent,
    TResult Function(ProductModel product)? toggleFavoriteEvent,
    TResult Function()? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsListEvent value) getProductsListEvent,
    required TResult Function(ToggleFavoriteEvent value) toggleFavoriteEvent,
    required TResult Function(RefreshFavoritesEvent value)
        refreshFavoritesEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsListEvent value)? getProductsListEvent,
    TResult? Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult? Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsListEvent value)? getProductsListEvent,
    TResult Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsListEventImplCopyWith<$Res> {
  factory _$$GetProductsListEventImplCopyWith(_$GetProductsListEventImpl value,
          $Res Function(_$GetProductsListEventImpl) then) =
      __$$GetProductsListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetProductsListEventImpl>
    implements _$$GetProductsListEventImplCopyWith<$Res> {
  __$$GetProductsListEventImplCopyWithImpl(_$GetProductsListEventImpl _value,
      $Res Function(_$GetProductsListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductsListEventImpl implements GetProductsListEvent {
  const _$GetProductsListEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getProductsListEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductsListEvent,
    required TResult Function(ProductModel product) toggleFavoriteEvent,
    required TResult Function() refreshFavoritesEvent,
  }) {
    return getProductsListEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductsListEvent,
    TResult? Function(ProductModel product)? toggleFavoriteEvent,
    TResult? Function()? refreshFavoritesEvent,
  }) {
    return getProductsListEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductsListEvent,
    TResult Function(ProductModel product)? toggleFavoriteEvent,
    TResult Function()? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (getProductsListEvent != null) {
      return getProductsListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsListEvent value) getProductsListEvent,
    required TResult Function(ToggleFavoriteEvent value) toggleFavoriteEvent,
    required TResult Function(RefreshFavoritesEvent value)
        refreshFavoritesEvent,
  }) {
    return getProductsListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsListEvent value)? getProductsListEvent,
    TResult? Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult? Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
  }) {
    return getProductsListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsListEvent value)? getProductsListEvent,
    TResult Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (getProductsListEvent != null) {
      return getProductsListEvent(this);
    }
    return orElse();
  }
}

abstract class GetProductsListEvent implements HomeEvent {
  const factory GetProductsListEvent() = _$GetProductsListEventImpl;
}

/// @nodoc
abstract class _$$ToggleFavoriteEventImplCopyWith<$Res> {
  factory _$$ToggleFavoriteEventImplCopyWith(_$ToggleFavoriteEventImpl value,
          $Res Function(_$ToggleFavoriteEventImpl) then) =
      __$$ToggleFavoriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$ToggleFavoriteEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ToggleFavoriteEventImpl>
    implements _$$ToggleFavoriteEventImplCopyWith<$Res> {
  __$$ToggleFavoriteEventImplCopyWithImpl(_$ToggleFavoriteEventImpl _value,
      $Res Function(_$ToggleFavoriteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ToggleFavoriteEventImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteEventImpl implements ToggleFavoriteEvent {
  const _$ToggleFavoriteEventImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'HomeEvent.toggleFavoriteEvent(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteEventImplCopyWith<_$ToggleFavoriteEventImpl> get copyWith =>
      __$$ToggleFavoriteEventImplCopyWithImpl<_$ToggleFavoriteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductsListEvent,
    required TResult Function(ProductModel product) toggleFavoriteEvent,
    required TResult Function() refreshFavoritesEvent,
  }) {
    return toggleFavoriteEvent(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductsListEvent,
    TResult? Function(ProductModel product)? toggleFavoriteEvent,
    TResult? Function()? refreshFavoritesEvent,
  }) {
    return toggleFavoriteEvent?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductsListEvent,
    TResult Function(ProductModel product)? toggleFavoriteEvent,
    TResult Function()? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (toggleFavoriteEvent != null) {
      return toggleFavoriteEvent(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsListEvent value) getProductsListEvent,
    required TResult Function(ToggleFavoriteEvent value) toggleFavoriteEvent,
    required TResult Function(RefreshFavoritesEvent value)
        refreshFavoritesEvent,
  }) {
    return toggleFavoriteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsListEvent value)? getProductsListEvent,
    TResult? Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult? Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
  }) {
    return toggleFavoriteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsListEvent value)? getProductsListEvent,
    TResult Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (toggleFavoriteEvent != null) {
      return toggleFavoriteEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleFavoriteEvent implements HomeEvent {
  const factory ToggleFavoriteEvent(final ProductModel product) =
      _$ToggleFavoriteEventImpl;

  ProductModel get product;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteEventImplCopyWith<_$ToggleFavoriteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshFavoritesEventImplCopyWith<$Res> {
  factory _$$RefreshFavoritesEventImplCopyWith(
          _$RefreshFavoritesEventImpl value,
          $Res Function(_$RefreshFavoritesEventImpl) then) =
      __$$RefreshFavoritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshFavoritesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshFavoritesEventImpl>
    implements _$$RefreshFavoritesEventImplCopyWith<$Res> {
  __$$RefreshFavoritesEventImplCopyWithImpl(_$RefreshFavoritesEventImpl _value,
      $Res Function(_$RefreshFavoritesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshFavoritesEventImpl implements RefreshFavoritesEvent {
  const _$RefreshFavoritesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshFavoritesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshFavoritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProductsListEvent,
    required TResult Function(ProductModel product) toggleFavoriteEvent,
    required TResult Function() refreshFavoritesEvent,
  }) {
    return refreshFavoritesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProductsListEvent,
    TResult? Function(ProductModel product)? toggleFavoriteEvent,
    TResult? Function()? refreshFavoritesEvent,
  }) {
    return refreshFavoritesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProductsListEvent,
    TResult Function(ProductModel product)? toggleFavoriteEvent,
    TResult Function()? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (refreshFavoritesEvent != null) {
      return refreshFavoritesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsListEvent value) getProductsListEvent,
    required TResult Function(ToggleFavoriteEvent value) toggleFavoriteEvent,
    required TResult Function(RefreshFavoritesEvent value)
        refreshFavoritesEvent,
  }) {
    return refreshFavoritesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsListEvent value)? getProductsListEvent,
    TResult? Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult? Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
  }) {
    return refreshFavoritesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsListEvent value)? getProductsListEvent,
    TResult Function(ToggleFavoriteEvent value)? toggleFavoriteEvent,
    TResult Function(RefreshFavoritesEvent value)? refreshFavoritesEvent,
    required TResult orElse(),
  }) {
    if (refreshFavoritesEvent != null) {
      return refreshFavoritesEvent(this);
    }
    return orElse();
  }
}

abstract class RefreshFavoritesEvent implements HomeEvent {
  const factory RefreshFavoritesEvent() = _$RefreshFavoritesEventImpl;
}

/// @nodoc
mixin _$HomeState {
  RequestStatus get getProductsListState => throw _privateConstructorUsedError;
  Failures? get getProductsListFailures => throw _privateConstructorUsedError;
  ProductsResponseModel? get productsResponseModel =>
      throw _privateConstructorUsedError;
  List<ProductModel> get favorites => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {RequestStatus getProductsListState,
      Failures? getProductsListFailures,
      ProductsResponseModel? productsResponseModel,
      List<ProductModel> favorites});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProductsListState = null,
    Object? getProductsListFailures = freezed,
    Object? productsResponseModel = freezed,
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      getProductsListState: null == getProductsListState
          ? _value.getProductsListState
          : getProductsListState // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductsListFailures: freezed == getProductsListFailures
          ? _value.getProductsListFailures
          : getProductsListFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productsResponseModel: freezed == productsResponseModel
          ? _value.productsResponseModel
          : productsResponseModel // ignore: cast_nullable_to_non_nullable
              as ProductsResponseModel?,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus getProductsListState,
      Failures? getProductsListFailures,
      ProductsResponseModel? productsResponseModel,
      List<ProductModel> favorites});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProductsListState = null,
    Object? getProductsListFailures = freezed,
    Object? productsResponseModel = freezed,
    Object? favorites = null,
  }) {
    return _then(_$HomeStateImpl(
      getProductsListState: null == getProductsListState
          ? _value.getProductsListState
          : getProductsListState // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductsListFailures: freezed == getProductsListFailures
          ? _value.getProductsListFailures
          : getProductsListFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productsResponseModel: freezed == productsResponseModel
          ? _value.productsResponseModel
          : productsResponseModel // ignore: cast_nullable_to_non_nullable
              as ProductsResponseModel?,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.getProductsListState = RequestStatus.init,
      this.getProductsListFailures,
      this.productsResponseModel,
      final List<ProductModel> favorites = const []})
      : _favorites = favorites;

  @override
  @JsonKey()
  final RequestStatus getProductsListState;
  @override
  final Failures? getProductsListFailures;
  @override
  final ProductsResponseModel? productsResponseModel;
  final List<ProductModel> _favorites;
  @override
  @JsonKey()
  List<ProductModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'HomeState(getProductsListState: $getProductsListState, getProductsListFailures: $getProductsListFailures, productsResponseModel: $productsResponseModel, favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getProductsListState, getProductsListState) ||
                other.getProductsListState == getProductsListState) &&
            (identical(
                    other.getProductsListFailures, getProductsListFailures) ||
                other.getProductsListFailures == getProductsListFailures) &&
            (identical(other.productsResponseModel, productsResponseModel) ||
                other.productsResponseModel == productsResponseModel) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getProductsListState,
      getProductsListFailures,
      productsResponseModel,
      const DeepCollectionEquality().hash(_favorites));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final RequestStatus getProductsListState,
      final Failures? getProductsListFailures,
      final ProductsResponseModel? productsResponseModel,
      final List<ProductModel> favorites}) = _$HomeStateImpl;

  @override
  RequestStatus get getProductsListState;
  @override
  Failures? get getProductsListFailures;
  @override
  ProductsResponseModel? get productsResponseModel;
  @override
  List<ProductModel> get favorites;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
