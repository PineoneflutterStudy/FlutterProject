// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LikePlaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) update,
    required TResult Function() failed,
    required TResult Function(Category category, String regionName) region,
    required TResult Function(String index, bool isFilter) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? update,
    TResult? Function()? failed,
    TResult? Function(Category category, String regionName)? region,
    TResult? Function(String index, bool isFilter)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? update,
    TResult Function()? failed,
    TResult Function(Category category, String regionName)? region,
    TResult Function(String index, bool isFilter)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onUpdate value) update,
    required TResult Function(_onFailed value) failed,
    required TResult Function(_Region value) region,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onUpdate value)? update,
    TResult? Function(_onFailed value)? failed,
    TResult? Function(_Region value)? region,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onUpdate value)? update,
    TResult Function(_onFailed value)? failed,
    TResult Function(_Region value)? region,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePlaceEventCopyWith<$Res> {
  factory $LikePlaceEventCopyWith(
          LikePlaceEvent value, $Res Function(LikePlaceEvent) then) =
      _$LikePlaceEventCopyWithImpl<$Res, LikePlaceEvent>;
}

/// @nodoc
class _$LikePlaceEventCopyWithImpl<$Res, $Val extends LikePlaceEvent>
    implements $LikePlaceEventCopyWith<$Res> {
  _$LikePlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onUpdateImplCopyWith<$Res> {
  factory _$$onUpdateImplCopyWith(
          _$onUpdateImpl value, $Res Function(_$onUpdateImpl) then) =
      __$$onUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$onUpdateImplCopyWithImpl<$Res>
    extends _$LikePlaceEventCopyWithImpl<$Res, _$onUpdateImpl>
    implements _$$onUpdateImplCopyWith<$Res> {
  __$$onUpdateImplCopyWithImpl(
      _$onUpdateImpl _value, $Res Function(_$onUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$onUpdateImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$onUpdateImpl implements _onUpdate {
  const _$onUpdateImpl(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'LikePlaceEvent.update(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onUpdateImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onUpdateImplCopyWith<_$onUpdateImpl> get copyWith =>
      __$$onUpdateImplCopyWithImpl<_$onUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) update,
    required TResult Function() failed,
    required TResult Function(Category category, String regionName) region,
    required TResult Function(String index, bool isFilter) delete,
  }) {
    return update(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? update,
    TResult? Function()? failed,
    TResult? Function(Category category, String regionName)? region,
    TResult? Function(String index, bool isFilter)? delete,
  }) {
    return update?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? update,
    TResult Function()? failed,
    TResult Function(Category category, String regionName)? region,
    TResult Function(String index, bool isFilter)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onUpdate value) update,
    required TResult Function(_onFailed value) failed,
    required TResult Function(_Region value) region,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onUpdate value)? update,
    TResult? Function(_onFailed value)? failed,
    TResult? Function(_Region value)? region,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onUpdate value)? update,
    TResult Function(_onFailed value)? failed,
    TResult Function(_Region value)? region,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _onUpdate implements LikePlaceEvent {
  const factory _onUpdate(final Category category) = _$onUpdateImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$onUpdateImplCopyWith<_$onUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onFailedImplCopyWith<$Res> {
  factory _$$onFailedImplCopyWith(
          _$onFailedImpl value, $Res Function(_$onFailedImpl) then) =
      __$$onFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onFailedImplCopyWithImpl<$Res>
    extends _$LikePlaceEventCopyWithImpl<$Res, _$onFailedImpl>
    implements _$$onFailedImplCopyWith<$Res> {
  __$$onFailedImplCopyWithImpl(
      _$onFailedImpl _value, $Res Function(_$onFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onFailedImpl implements _onFailed {
  const _$onFailedImpl();

  @override
  String toString() {
    return 'LikePlaceEvent.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) update,
    required TResult Function() failed,
    required TResult Function(Category category, String regionName) region,
    required TResult Function(String index, bool isFilter) delete,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? update,
    TResult? Function()? failed,
    TResult? Function(Category category, String regionName)? region,
    TResult? Function(String index, bool isFilter)? delete,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? update,
    TResult Function()? failed,
    TResult Function(Category category, String regionName)? region,
    TResult Function(String index, bool isFilter)? delete,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onUpdate value) update,
    required TResult Function(_onFailed value) failed,
    required TResult Function(_Region value) region,
    required TResult Function(_Delete value) delete,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onUpdate value)? update,
    TResult? Function(_onFailed value)? failed,
    TResult? Function(_Region value)? region,
    TResult? Function(_Delete value)? delete,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onUpdate value)? update,
    TResult Function(_onFailed value)? failed,
    TResult Function(_Region value)? region,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _onFailed implements LikePlaceEvent {
  const factory _onFailed() = _$onFailedImpl;
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category, String regionName});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$LikePlaceEventCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? regionName = null,
  }) {
    return _then(_$RegionImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$RegionImpl implements _Region {
  const _$RegionImpl(this.category, this.regionName);

  @override
  final Category category;
  @override
  final String regionName;

  @override
  String toString() {
    return 'LikePlaceEvent.region(category: $category, regionName: $regionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, regionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) update,
    required TResult Function() failed,
    required TResult Function(Category category, String regionName) region,
    required TResult Function(String index, bool isFilter) delete,
  }) {
    return region(category, regionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? update,
    TResult? Function()? failed,
    TResult? Function(Category category, String regionName)? region,
    TResult? Function(String index, bool isFilter)? delete,
  }) {
    return region?.call(category, regionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? update,
    TResult Function()? failed,
    TResult Function(Category category, String regionName)? region,
    TResult Function(String index, bool isFilter)? delete,
    required TResult orElse(),
  }) {
    if (region != null) {
      return region(category, regionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onUpdate value) update,
    required TResult Function(_onFailed value) failed,
    required TResult Function(_Region value) region,
    required TResult Function(_Delete value) delete,
  }) {
    return region(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onUpdate value)? update,
    TResult? Function(_onFailed value)? failed,
    TResult? Function(_Region value)? region,
    TResult? Function(_Delete value)? delete,
  }) {
    return region?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onUpdate value)? update,
    TResult Function(_onFailed value)? failed,
    TResult Function(_Region value)? region,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (region != null) {
      return region(this);
    }
    return orElse();
  }
}

abstract class _Region implements LikePlaceEvent {
  const factory _Region(final Category category, final String regionName) =
      _$RegionImpl;

  Category get category;
  String get regionName;
  @JsonKey(ignore: true)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String index, bool isFilter});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$LikePlaceEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isFilter = null,
  }) {
    return _then(_$DeleteImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      null == isFilter
          ? _value.isFilter
          : isFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.index, this.isFilter);

  @override
  final String index;
  @override
  final bool isFilter;

  @override
  String toString() {
    return 'LikePlaceEvent.delete(index: $index, isFilter: $isFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isFilter, isFilter) ||
                other.isFilter == isFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, isFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) update,
    required TResult Function() failed,
    required TResult Function(Category category, String regionName) region,
    required TResult Function(String index, bool isFilter) delete,
  }) {
    return delete(index, isFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? update,
    TResult? Function()? failed,
    TResult? Function(Category category, String regionName)? region,
    TResult? Function(String index, bool isFilter)? delete,
  }) {
    return delete?.call(index, isFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? update,
    TResult Function()? failed,
    TResult Function(Category category, String regionName)? region,
    TResult Function(String index, bool isFilter)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(index, isFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onUpdate value) update,
    required TResult Function(_onFailed value) failed,
    required TResult Function(_Region value) region,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onUpdate value)? update,
    TResult? Function(_onFailed value)? failed,
    TResult? Function(_Region value)? region,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onUpdate value)? update,
    TResult Function(_onFailed value)? failed,
    TResult Function(_Region value)? region,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements LikePlaceEvent {
  const factory _Delete(final String index, final bool isFilter) = _$DeleteImpl;

  String get index;
  bool get isFilter;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikePlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePlaceStateCopyWith<$Res> {
  factory $LikePlaceStateCopyWith(
          LikePlaceState value, $Res Function(LikePlaceState) then) =
      _$LikePlaceStateCopyWithImpl<$Res, LikePlaceState>;
}

/// @nodoc
class _$LikePlaceStateCopyWithImpl<$Res, $Val extends LikePlaceState>
    implements $LikePlaceStateCopyWith<$Res> {
  _$LikePlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LikePlaceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LikePlaceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LikePlaceState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LikePlaceStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LikePlaceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LikePlaceState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LikeState state, List<Place> placeList, Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LikePlaceStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? placeList = null,
    Object? category = null,
  }) {
    return _then(_$SuccessImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LikeState,
      null == placeList
          ? _value._placeList
          : placeList // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.state, final List<Place> placeList, this.category)
      : _placeList = placeList;

  @override
  final LikeState state;
  final List<Place> _placeList;
  @override
  List<Place> get placeList {
    if (_placeList is EqualUnmodifiableListView) return _placeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeList);
  }

  @override
  final Category category;

  @override
  String toString() {
    return 'LikePlaceState.success(state: $state, placeList: $placeList, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._placeList, _placeList) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state,
      const DeepCollectionEquality().hash(_placeList), category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) {
    return success(state, placeList, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) {
    return success?.call(state, placeList, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(state, placeList, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LikePlaceState {
  const factory _Success(final LikeState state, final List<Place> placeList,
      final Category category) = _$SuccessImpl;

  LikeState get state;
  List<Place> get placeList;
  Category get category;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LikeState state, Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$LikePlaceStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? category = null,
  }) {
    return _then(_$EmptyImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LikeState,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl(this.state, this.category);

  @override
  final LikeState state;
  @override
  final Category category;

  @override
  String toString() {
    return 'LikePlaceState.empty(state: $state, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) {
    return empty(state, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) {
    return empty?.call(state, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(state, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements LikePlaceState {
  const factory _Empty(final LikeState state, final Category category) =
      _$EmptyImpl;

  LikeState get state;
  Category get category;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LikePlaceStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'LikePlaceState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LikePlaceState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$onDeleteImplCopyWith<$Res> {
  factory _$$onDeleteImplCopyWith(
          _$onDeleteImpl value, $Res Function(_$onDeleteImpl) then) =
      __$$onDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onDeleteImplCopyWithImpl<$Res>
    extends _$LikePlaceStateCopyWithImpl<$Res, _$onDeleteImpl>
    implements _$$onDeleteImplCopyWith<$Res> {
  __$$onDeleteImplCopyWithImpl(
      _$onDeleteImpl _value, $Res Function(_$onDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onDeleteImpl implements _onDelete {
  const _$onDeleteImpl();

  @override
  String toString() {
    return 'LikePlaceState.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            LikeState state, List<Place> placeList, Category category)
        success,
    required TResult Function(LikeState state, Category category) empty,
    required TResult Function() error,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            LikeState state, List<Place> placeList, Category category)?
        success,
    TResult? Function(LikeState state, Category category)? empty,
    TResult? Function()? error,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LikeState state, List<Place> placeList, Category category)?
        success,
    TResult Function(LikeState state, Category category)? empty,
    TResult Function()? error,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_onDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
    TResult? Function(_onDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_onDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _onDelete implements LikePlaceState {
  const factory _onDelete() = _$onDeleteImpl;
}
