// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) success,
    required TResult Function() empty,
    required TResult Function(ErrorResponse error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? success,
    TResult? Function()? empty,
    TResult? Function(ErrorResponse error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? success,
    TResult Function()? empty,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceSuccess value) success,
    required TResult Function(PlaceEmpty value) empty,
    required TResult Function(PlaceError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceSuccess value)? success,
    TResult? Function(PlaceEmpty value)? empty,
    TResult? Function(PlaceError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceSuccess value)? success,
    TResult Function(PlaceEmpty value)? empty,
    TResult Function(PlaceError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlaceLoadingImplCopyWith<$Res> {
  factory _$$PlaceLoadingImplCopyWith(
          _$PlaceLoadingImpl value, $Res Function(_$PlaceLoadingImpl) then) =
      __$$PlaceLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceLoadingImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceLoadingImpl>
    implements _$$PlaceLoadingImplCopyWith<$Res> {
  __$$PlaceLoadingImplCopyWithImpl(
      _$PlaceLoadingImpl _value, $Res Function(_$PlaceLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceLoadingImpl implements PlaceLoading {
  const _$PlaceLoadingImpl();

  @override
  String toString() {
    return 'PlaceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) success,
    required TResult Function() empty,
    required TResult Function(ErrorResponse error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? success,
    TResult? Function()? empty,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? success,
    TResult Function()? empty,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceSuccess value) success,
    required TResult Function(PlaceEmpty value) empty,
    required TResult Function(PlaceError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceSuccess value)? success,
    TResult? Function(PlaceEmpty value)? empty,
    TResult? Function(PlaceError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceSuccess value)? success,
    TResult Function(PlaceEmpty value)? empty,
    TResult Function(PlaceError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlaceLoading implements PlaceState {
  const factory PlaceLoading() = _$PlaceLoadingImpl;
}

/// @nodoc
abstract class _$$PlaceSuccessImplCopyWith<$Res> {
  factory _$$PlaceSuccessImplCopyWith(
          _$PlaceSuccessImpl value, $Res Function(_$PlaceSuccessImpl) then) =
      __$$PlaceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Place> places});
}

/// @nodoc
class __$$PlaceSuccessImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceSuccessImpl>
    implements _$$PlaceSuccessImplCopyWith<$Res> {
  __$$PlaceSuccessImplCopyWithImpl(
      _$PlaceSuccessImpl _value, $Res Function(_$PlaceSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$PlaceSuccessImpl(
      null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlaceSuccessImpl implements PlaceSuccess {
  const _$PlaceSuccessImpl(final List<Place> places) : _places = places;

  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlaceState.success(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSuccessImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSuccessImplCopyWith<_$PlaceSuccessImpl> get copyWith =>
      __$$PlaceSuccessImplCopyWithImpl<_$PlaceSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) success,
    required TResult Function() empty,
    required TResult Function(ErrorResponse error) error,
  }) {
    return success(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? success,
    TResult? Function()? empty,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return success?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? success,
    TResult Function()? empty,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceSuccess value) success,
    required TResult Function(PlaceEmpty value) empty,
    required TResult Function(PlaceError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceSuccess value)? success,
    TResult? Function(PlaceEmpty value)? empty,
    TResult? Function(PlaceError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceSuccess value)? success,
    TResult Function(PlaceEmpty value)? empty,
    TResult Function(PlaceError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PlaceSuccess implements PlaceState {
  const factory PlaceSuccess(final List<Place> places) = _$PlaceSuccessImpl;

  List<Place> get places;
  @JsonKey(ignore: true)
  _$$PlaceSuccessImplCopyWith<_$PlaceSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceEmptyImplCopyWith<$Res> {
  factory _$$PlaceEmptyImplCopyWith(
          _$PlaceEmptyImpl value, $Res Function(_$PlaceEmptyImpl) then) =
      __$$PlaceEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceEmptyImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceEmptyImpl>
    implements _$$PlaceEmptyImplCopyWith<$Res> {
  __$$PlaceEmptyImplCopyWithImpl(
      _$PlaceEmptyImpl _value, $Res Function(_$PlaceEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceEmptyImpl implements PlaceEmpty {
  const _$PlaceEmptyImpl();

  @override
  String toString() {
    return 'PlaceState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) success,
    required TResult Function() empty,
    required TResult Function(ErrorResponse error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? success,
    TResult? Function()? empty,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? success,
    TResult Function()? empty,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceSuccess value) success,
    required TResult Function(PlaceEmpty value) empty,
    required TResult Function(PlaceError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceSuccess value)? success,
    TResult? Function(PlaceEmpty value)? empty,
    TResult? Function(PlaceError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceSuccess value)? success,
    TResult Function(PlaceEmpty value)? empty,
    TResult Function(PlaceError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PlaceEmpty implements PlaceState {
  const factory PlaceEmpty() = _$PlaceEmptyImpl;
}

/// @nodoc
abstract class _$$PlaceErrorImplCopyWith<$Res> {
  factory _$$PlaceErrorImplCopyWith(
          _$PlaceErrorImpl value, $Res Function(_$PlaceErrorImpl) then) =
      __$$PlaceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponse error});
}

/// @nodoc
class __$$PlaceErrorImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceErrorImpl>
    implements _$$PlaceErrorImplCopyWith<$Res> {
  __$$PlaceErrorImplCopyWithImpl(
      _$PlaceErrorImpl _value, $Res Function(_$PlaceErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PlaceErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }
}

/// @nodoc

class _$PlaceErrorImpl implements PlaceError {
  const _$PlaceErrorImpl(this.error);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'PlaceState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceErrorImplCopyWith<_$PlaceErrorImpl> get copyWith =>
      __$$PlaceErrorImplCopyWithImpl<_$PlaceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) success,
    required TResult Function() empty,
    required TResult Function(ErrorResponse error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? success,
    TResult? Function()? empty,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? success,
    TResult Function()? empty,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceSuccess value) success,
    required TResult Function(PlaceEmpty value) empty,
    required TResult Function(PlaceError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceSuccess value)? success,
    TResult? Function(PlaceEmpty value)? empty,
    TResult? Function(PlaceError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceSuccess value)? success,
    TResult Function(PlaceEmpty value)? empty,
    TResult Function(PlaceError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlaceError implements PlaceState {
  const factory PlaceError(final ErrorResponse error) = _$PlaceErrorImpl;

  ErrorResponse get error;
  @JsonKey(ignore: true)
  _$$PlaceErrorImplCopyWith<_$PlaceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceEvent {
  String get search => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String category, int page) search,
    required TResult Function(String search, String? category, Address address,
            String prevPlaceId, int page)
        searchXY,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String category, int page)? search,
    TResult? Function(String search, String? category, Address address,
            String prevPlaceId, int page)?
        searchXY,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String category, int page)? search,
    TResult Function(String search, String? category, Address address,
            String prevPlaceId, int page)?
        searchXY,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceSearched value) search,
    required TResult Function(PlaceSearchedXY value) searchXY,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceSearched value)? search,
    TResult? Function(PlaceSearchedXY value)? searchXY,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceSearched value)? search,
    TResult Function(PlaceSearchedXY value)? searchXY,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceEventCopyWith<PlaceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEventCopyWith<$Res> {
  factory $PlaceEventCopyWith(
          PlaceEvent value, $Res Function(PlaceEvent) then) =
      _$PlaceEventCopyWithImpl<$Res, PlaceEvent>;
  @useResult
  $Res call({String search, String category, int page});
}

/// @nodoc
class _$PlaceEventCopyWithImpl<$Res, $Val extends PlaceEvent>
    implements $PlaceEventCopyWith<$Res> {
  _$PlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? category = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category!
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceSearchedImplCopyWith<$Res>
    implements $PlaceEventCopyWith<$Res> {
  factory _$$PlaceSearchedImplCopyWith(
          _$PlaceSearchedImpl value, $Res Function(_$PlaceSearchedImpl) then) =
      __$$PlaceSearchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search, String category, int page});
}

/// @nodoc
class __$$PlaceSearchedImplCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$PlaceSearchedImpl>
    implements _$$PlaceSearchedImplCopyWith<$Res> {
  __$$PlaceSearchedImplCopyWithImpl(
      _$PlaceSearchedImpl _value, $Res Function(_$PlaceSearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? category = null,
    Object? page = null,
  }) {
    return _then(_$PlaceSearchedImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlaceSearchedImpl implements PlaceSearched {
  const _$PlaceSearchedImpl(this.search, this.category, {this.page = 1});

  @override
  final String search;
  @override
  final String category;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'PlaceEvent.search(search: $search, category: $category, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSearchedImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search, category, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSearchedImplCopyWith<_$PlaceSearchedImpl> get copyWith =>
      __$$PlaceSearchedImplCopyWithImpl<_$PlaceSearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String category, int page) search,
    required TResult Function(String search, String? category, Address address,
            String prevPlaceId, int page)
        searchXY,
  }) {
    return search(this.search, category, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String category, int page)? search,
    TResult? Function(String search, String? category, Address address,
            String prevPlaceId, int page)?
        searchXY,
  }) {
    return search?.call(this.search, category, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String category, int page)? search,
    TResult Function(String search, String? category, Address address,
            String prevPlaceId, int page)?
        searchXY,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search, category, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceSearched value) search,
    required TResult Function(PlaceSearchedXY value) searchXY,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceSearched value)? search,
    TResult? Function(PlaceSearchedXY value)? searchXY,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceSearched value)? search,
    TResult Function(PlaceSearchedXY value)? searchXY,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class PlaceSearched implements PlaceEvent {
  const factory PlaceSearched(final String search, final String category,
      {final int page}) = _$PlaceSearchedImpl;

  @override
  String get search;
  @override
  String get category;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$PlaceSearchedImplCopyWith<_$PlaceSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceSearchedXYImplCopyWith<$Res>
    implements $PlaceEventCopyWith<$Res> {
  factory _$$PlaceSearchedXYImplCopyWith(_$PlaceSearchedXYImpl value,
          $Res Function(_$PlaceSearchedXYImpl) then) =
      __$$PlaceSearchedXYImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String search,
      String? category,
      Address address,
      String prevPlaceId,
      int page});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$PlaceSearchedXYImplCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$PlaceSearchedXYImpl>
    implements _$$PlaceSearchedXYImplCopyWith<$Res> {
  __$$PlaceSearchedXYImplCopyWithImpl(
      _$PlaceSearchedXYImpl _value, $Res Function(_$PlaceSearchedXYImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? category = freezed,
    Object? address = null,
    Object? prevPlaceId = null,
    Object? page = null,
  }) {
    return _then(_$PlaceSearchedXYImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      prevPlaceId: null == prevPlaceId
          ? _value.prevPlaceId
          : prevPlaceId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$PlaceSearchedXYImpl implements PlaceSearchedXY {
  const _$PlaceSearchedXYImpl(this.search, this.category, this.address,
      {this.prevPlaceId = '', this.page = 1});

  @override
  final String search;
  @override
  final String? category;
  @override
  final Address address;
  @override
  @JsonKey()
  final String prevPlaceId;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'PlaceEvent.searchXY(search: $search, category: $category, address: $address, prevPlaceId: $prevPlaceId, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSearchedXYImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.prevPlaceId, prevPlaceId) ||
                other.prevPlaceId == prevPlaceId) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, search, category, address, prevPlaceId, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSearchedXYImplCopyWith<_$PlaceSearchedXYImpl> get copyWith =>
      __$$PlaceSearchedXYImplCopyWithImpl<_$PlaceSearchedXYImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search, String category, int page) search,
    required TResult Function(String search, String? category, Address address,
            String prevPlaceId, int page)
        searchXY,
  }) {
    return searchXY(this.search, category, address, prevPlaceId, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search, String category, int page)? search,
    TResult? Function(String search, String? category, Address address,
            String prevPlaceId, int page)?
        searchXY,
  }) {
    return searchXY?.call(this.search, category, address, prevPlaceId, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search, String category, int page)? search,
    TResult Function(String search, String? category, Address address,
            String prevPlaceId, int page)?
        searchXY,
    required TResult orElse(),
  }) {
    if (searchXY != null) {
      return searchXY(this.search, category, address, prevPlaceId, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceSearched value) search,
    required TResult Function(PlaceSearchedXY value) searchXY,
  }) {
    return searchXY(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceSearched value)? search,
    TResult? Function(PlaceSearchedXY value)? searchXY,
  }) {
    return searchXY?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceSearched value)? search,
    TResult Function(PlaceSearchedXY value)? searchXY,
    required TResult orElse(),
  }) {
    if (searchXY != null) {
      return searchXY(this);
    }
    return orElse();
  }
}

abstract class PlaceSearchedXY implements PlaceEvent {
  const factory PlaceSearchedXY(
      final String search, final String? category, final Address address,
      {final String prevPlaceId, final int page}) = _$PlaceSearchedXYImpl;

  @override
  String get search;
  @override
  String? get category;
  Address get address;
  String get prevPlaceId;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$PlaceSearchedXYImplCopyWith<_$PlaceSearchedXYImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
