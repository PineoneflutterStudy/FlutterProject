// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LikeCategoryEvent {
  Object get selected => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MenuType menuType, String selected)
        getCategoryList,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        setCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MenuType menuType, String selected)? getCategoryList,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        setCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MenuType menuType, String selected)? getCategoryList,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        setCategorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_SetCategorySelected value) setCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_SetCategorySelected value)? setCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_SetCategorySelected value)? setCategorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCategoryEventCopyWith<$Res> {
  factory $LikeCategoryEventCopyWith(
          LikeCategoryEvent value, $Res Function(LikeCategoryEvent) then) =
      _$LikeCategoryEventCopyWithImpl<$Res, LikeCategoryEvent>;
}

/// @nodoc
class _$LikeCategoryEventCopyWithImpl<$Res, $Val extends LikeCategoryEvent>
    implements $LikeCategoryEventCopyWith<$Res> {
  _$LikeCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCategoryListImplCopyWith<$Res> {
  factory _$$GetCategoryListImplCopyWith(_$GetCategoryListImpl value,
          $Res Function(_$GetCategoryListImpl) then) =
      __$$GetCategoryListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MenuType menuType, String selected});
}

/// @nodoc
class __$$GetCategoryListImplCopyWithImpl<$Res>
    extends _$LikeCategoryEventCopyWithImpl<$Res, _$GetCategoryListImpl>
    implements _$$GetCategoryListImplCopyWith<$Res> {
  __$$GetCategoryListImplCopyWithImpl(
      _$GetCategoryListImpl _value, $Res Function(_$GetCategoryListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuType = null,
    Object? selected = null,
  }) {
    return _then(_$GetCategoryListImpl(
      null == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as MenuType,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoryListImpl implements _GetCategoryList {
  const _$GetCategoryListImpl(this.menuType, {this.selected = ''});

  @override
  final MenuType menuType;
  @override
  @JsonKey()
  final String selected;

  @override
  String toString() {
    return 'LikeCategoryEvent.getCategoryList(menuType: $menuType, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryListImpl &&
            (identical(other.menuType, menuType) ||
                other.menuType == menuType) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, menuType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryListImplCopyWith<_$GetCategoryListImpl> get copyWith =>
      __$$GetCategoryListImplCopyWithImpl<_$GetCategoryListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MenuType menuType, String selected)
        getCategoryList,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        setCategorySelected,
  }) {
    return getCategoryList(menuType, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MenuType menuType, String selected)? getCategoryList,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        setCategorySelected,
  }) {
    return getCategoryList?.call(menuType, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MenuType menuType, String selected)? getCategoryList,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        setCategorySelected,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(menuType, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_SetCategorySelected value) setCategorySelected,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_SetCategorySelected value)? setCategorySelected,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_SetCategorySelected value)? setCategorySelected,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryList implements LikeCategoryEvent {
  const factory _GetCategoryList(final MenuType menuType,
      {final String selected}) = _$GetCategoryListImpl;

  MenuType get menuType;
  @override
  String get selected;
  @JsonKey(ignore: true)
  _$$GetCategoryListImplCopyWith<_$GetCategoryListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCategorySelectedImplCopyWith<$Res> {
  factory _$$SetCategorySelectedImplCopyWith(_$SetCategorySelectedImpl value,
          $Res Function(_$SetCategorySelectedImpl) then) =
      __$$SetCategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categorys, Category selected, String regionName});

  $CategoryCopyWith<$Res> get selected;
}

/// @nodoc
class __$$SetCategorySelectedImplCopyWithImpl<$Res>
    extends _$LikeCategoryEventCopyWithImpl<$Res, _$SetCategorySelectedImpl>
    implements _$$SetCategorySelectedImplCopyWith<$Res> {
  __$$SetCategorySelectedImplCopyWithImpl(_$SetCategorySelectedImpl _value,
      $Res Function(_$SetCategorySelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorys = null,
    Object? selected = null,
    Object? regionName = null,
  }) {
    return _then(_$SetCategorySelectedImpl(
      null == categorys
          ? _value._categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Category,
      null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get selected {
    return $CategoryCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc

class _$SetCategorySelectedImpl implements _SetCategorySelected {
  const _$SetCategorySelectedImpl(
      final List<Category> categorys, this.selected, this.regionName)
      : _categorys = categorys;

  final List<Category> _categorys;
  @override
  List<Category> get categorys {
    if (_categorys is EqualUnmodifiableListView) return _categorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorys);
  }

  @override
  final Category selected;
  @override
  final String regionName;

  @override
  String toString() {
    return 'LikeCategoryEvent.setCategorySelected(categorys: $categorys, selected: $selected, regionName: $regionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCategorySelectedImpl &&
            const DeepCollectionEquality()
                .equals(other._categorys, _categorys) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categorys), selected, regionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCategorySelectedImplCopyWith<_$SetCategorySelectedImpl> get copyWith =>
      __$$SetCategorySelectedImplCopyWithImpl<_$SetCategorySelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MenuType menuType, String selected)
        getCategoryList,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        setCategorySelected,
  }) {
    return setCategorySelected(categorys, selected, regionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MenuType menuType, String selected)? getCategoryList,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        setCategorySelected,
  }) {
    return setCategorySelected?.call(categorys, selected, regionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MenuType menuType, String selected)? getCategoryList,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        setCategorySelected,
    required TResult orElse(),
  }) {
    if (setCategorySelected != null) {
      return setCategorySelected(categorys, selected, regionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_SetCategorySelected value) setCategorySelected,
  }) {
    return setCategorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_SetCategorySelected value)? setCategorySelected,
  }) {
    return setCategorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_SetCategorySelected value)? setCategorySelected,
    required TResult orElse(),
  }) {
    if (setCategorySelected != null) {
      return setCategorySelected(this);
    }
    return orElse();
  }
}

abstract class _SetCategorySelected implements LikeCategoryEvent {
  const factory _SetCategorySelected(
      final List<Category> categorys,
      final Category selected,
      final String regionName) = _$SetCategorySelectedImpl;

  List<Category> get categorys;
  @override
  Category get selected;
  String get regionName;
  @JsonKey(ignore: true)
  _$$SetCategorySelectedImplCopyWith<_$SetCategorySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikeCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        success,
    required TResult Function(ErrorResponse error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoading value) loading,
    required TResult Function(_CategorySuccess value) success,
    required TResult Function(_CategoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoading value)? loading,
    TResult? Function(_CategorySuccess value)? success,
    TResult? Function(_CategoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoading value)? loading,
    TResult Function(_CategorySuccess value)? success,
    TResult Function(_CategoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCategoryStateCopyWith<$Res> {
  factory $LikeCategoryStateCopyWith(
          LikeCategoryState value, $Res Function(LikeCategoryState) then) =
      _$LikeCategoryStateCopyWithImpl<$Res, LikeCategoryState>;
}

/// @nodoc
class _$LikeCategoryStateCopyWithImpl<$Res, $Val extends LikeCategoryState>
    implements $LikeCategoryStateCopyWith<$Res> {
  _$LikeCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryLoadingImplCopyWith<$Res> {
  factory _$$CategoryLoadingImplCopyWith(_$CategoryLoadingImpl value,
          $Res Function(_$CategoryLoadingImpl) then) =
      __$$CategoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingImplCopyWithImpl<$Res>
    extends _$LikeCategoryStateCopyWithImpl<$Res, _$CategoryLoadingImpl>
    implements _$$CategoryLoadingImplCopyWith<$Res> {
  __$$CategoryLoadingImplCopyWithImpl(
      _$CategoryLoadingImpl _value, $Res Function(_$CategoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryLoadingImpl implements _CategoryLoading {
  const _$CategoryLoadingImpl();

  @override
  String toString() {
    return 'LikeCategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
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
    required TResult Function(_CategoryLoading value) loading,
    required TResult Function(_CategorySuccess value) success,
    required TResult Function(_CategoryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoading value)? loading,
    TResult? Function(_CategorySuccess value)? success,
    TResult? Function(_CategoryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoading value)? loading,
    TResult Function(_CategorySuccess value)? success,
    TResult Function(_CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CategoryLoading implements LikeCategoryState {
  const factory _CategoryLoading() = _$CategoryLoadingImpl;
}

/// @nodoc
abstract class _$$CategorySuccessImplCopyWith<$Res> {
  factory _$$CategorySuccessImplCopyWith(_$CategorySuccessImpl value,
          $Res Function(_$CategorySuccessImpl) then) =
      __$$CategorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categorys, Category selected, String regionName});

  $CategoryCopyWith<$Res> get selected;
}

/// @nodoc
class __$$CategorySuccessImplCopyWithImpl<$Res>
    extends _$LikeCategoryStateCopyWithImpl<$Res, _$CategorySuccessImpl>
    implements _$$CategorySuccessImplCopyWith<$Res> {
  __$$CategorySuccessImplCopyWithImpl(
      _$CategorySuccessImpl _value, $Res Function(_$CategorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorys = null,
    Object? selected = null,
    Object? regionName = null,
  }) {
    return _then(_$CategorySuccessImpl(
      null == categorys
          ? _value._categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Category,
      null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get selected {
    return $CategoryCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc

class _$CategorySuccessImpl implements _CategorySuccess {
  const _$CategorySuccessImpl(
      final List<Category> categorys, this.selected, this.regionName)
      : _categorys = categorys;

  final List<Category> _categorys;
  @override
  List<Category> get categorys {
    if (_categorys is EqualUnmodifiableListView) return _categorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorys);
  }

  @override
  final Category selected;
  @override
  final String regionName;

  @override
  String toString() {
    return 'LikeCategoryState.success(categorys: $categorys, selected: $selected, regionName: $regionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categorys, _categorys) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categorys), selected, regionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySuccessImplCopyWith<_$CategorySuccessImpl> get copyWith =>
      __$$CategorySuccessImplCopyWithImpl<_$CategorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return success(categorys, selected, regionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return success?.call(categorys, selected, regionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categorys, selected, regionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoading value) loading,
    required TResult Function(_CategorySuccess value) success,
    required TResult Function(_CategoryError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoading value)? loading,
    TResult? Function(_CategorySuccess value)? success,
    TResult? Function(_CategoryError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoading value)? loading,
    TResult Function(_CategorySuccess value)? success,
    TResult Function(_CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CategorySuccess implements LikeCategoryState {
  const factory _CategorySuccess(final List<Category> categorys,
      final Category selected, final String regionName) = _$CategorySuccessImpl;

  List<Category> get categorys;
  Category get selected;
  String get regionName;
  @JsonKey(ignore: true)
  _$$CategorySuccessImplCopyWith<_$CategorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryErrorImplCopyWith<$Res> {
  factory _$$CategoryErrorImplCopyWith(
          _$CategoryErrorImpl value, $Res Function(_$CategoryErrorImpl) then) =
      __$$CategoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponse error});
}

/// @nodoc
class __$$CategoryErrorImplCopyWithImpl<$Res>
    extends _$LikeCategoryStateCopyWithImpl<$Res, _$CategoryErrorImpl>
    implements _$$CategoryErrorImplCopyWith<$Res> {
  __$$CategoryErrorImplCopyWithImpl(
      _$CategoryErrorImpl _value, $Res Function(_$CategoryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoryErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }
}

/// @nodoc

class _$CategoryErrorImpl implements _CategoryError {
  const _$CategoryErrorImpl(this.error);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'LikeCategoryState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      __$$CategoryErrorImplCopyWithImpl<_$CategoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Category> categorys, Category selected, String regionName)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Category> categorys, Category selected, String regionName)?
        success,
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
    required TResult Function(_CategoryLoading value) loading,
    required TResult Function(_CategorySuccess value) success,
    required TResult Function(_CategoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoading value)? loading,
    TResult? Function(_CategorySuccess value)? success,
    TResult? Function(_CategoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoading value)? loading,
    TResult Function(_CategorySuccess value)? success,
    TResult Function(_CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CategoryError implements LikeCategoryState {
  const factory _CategoryError(final ErrorResponse error) = _$CategoryErrorImpl;

  ErrorResponse get error;
  @JsonKey(ignore: true)
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
