// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ctgr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CtgrState {
  Status get status => throw _privateConstructorUsedError;
  MenuType get menuType => throw _privateConstructorUsedError;
  List<Category> get ctgrs => throw _privateConstructorUsedError;
  ErrorResponse? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CtgrStateCopyWith<CtgrState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CtgrStateCopyWith<$Res> {
  factory $CtgrStateCopyWith(CtgrState value, $Res Function(CtgrState) then) =
      _$CtgrStateCopyWithImpl<$Res, CtgrState>;
  @useResult
  $Res call(
      {Status status,
      MenuType menuType,
      List<Category> ctgrs,
      ErrorResponse? error});
}

/// @nodoc
class _$CtgrStateCopyWithImpl<$Res, $Val extends CtgrState>
    implements $CtgrStateCopyWith<$Res> {
  _$CtgrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? menuType = null,
    Object? ctgrs = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      menuType: null == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as MenuType,
      ctgrs: null == ctgrs
          ? _value.ctgrs
          : ctgrs // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CtgrStateImplCopyWith<$Res>
    implements $CtgrStateCopyWith<$Res> {
  factory _$$CtgrStateImplCopyWith(
          _$CtgrStateImpl value, $Res Function(_$CtgrStateImpl) then) =
      __$$CtgrStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      MenuType menuType,
      List<Category> ctgrs,
      ErrorResponse? error});
}

/// @nodoc
class __$$CtgrStateImplCopyWithImpl<$Res>
    extends _$CtgrStateCopyWithImpl<$Res, _$CtgrStateImpl>
    implements _$$CtgrStateImplCopyWith<$Res> {
  __$$CtgrStateImplCopyWithImpl(
      _$CtgrStateImpl _value, $Res Function(_$CtgrStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? menuType = null,
    Object? ctgrs = null,
    Object? error = freezed,
  }) {
    return _then(_$CtgrStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      menuType: null == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as MenuType,
      ctgrs: null == ctgrs
          ? _value._ctgrs
          : ctgrs // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ));
  }
}

/// @nodoc

class _$CtgrStateImpl implements _CtgrState {
  _$CtgrStateImpl(
      {this.status = Status.initial,
      this.menuType = MenuType.home,
      final List<Category> ctgrs = const <Category>[],
      this.error})
      : _ctgrs = ctgrs;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final MenuType menuType;
  final List<Category> _ctgrs;
  @override
  @JsonKey()
  List<Category> get ctgrs {
    if (_ctgrs is EqualUnmodifiableListView) return _ctgrs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ctgrs);
  }

  @override
  final ErrorResponse? error;

  @override
  String toString() {
    return 'CtgrState(status: $status, menuType: $menuType, ctgrs: $ctgrs, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CtgrStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.menuType, menuType) ||
                other.menuType == menuType) &&
            const DeepCollectionEquality().equals(other._ctgrs, _ctgrs) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, menuType,
      const DeepCollectionEquality().hash(_ctgrs), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CtgrStateImplCopyWith<_$CtgrStateImpl> get copyWith =>
      __$$CtgrStateImplCopyWithImpl<_$CtgrStateImpl>(this, _$identity);
}

abstract class _CtgrState implements CtgrState {
  factory _CtgrState(
      {final Status status,
      final MenuType menuType,
      final List<Category> ctgrs,
      final ErrorResponse? error}) = _$CtgrStateImpl;

  @override
  Status get status;
  @override
  MenuType get menuType;
  @override
  List<Category> get ctgrs;
  @override
  ErrorResponse? get error;
  @override
  @JsonKey(ignore: true)
  _$$CtgrStateImplCopyWith<_$CtgrStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
