// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionErrorModel _$RegionErrorModelFromJson(Map<String, dynamic> json) {
  return _RegionErrorModel.fromJson(json);
}

/// @nodoc
mixin _$RegionErrorModel {
  String get errMsg => throw _privateConstructorUsedError;
  int get errCd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionErrorModelCopyWith<RegionErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionErrorModelCopyWith<$Res> {
  factory $RegionErrorModelCopyWith(
          RegionErrorModel value, $Res Function(RegionErrorModel) then) =
      _$RegionErrorModelCopyWithImpl<$Res, RegionErrorModel>;
  @useResult
  $Res call({String errMsg, int errCd});
}

/// @nodoc
class _$RegionErrorModelCopyWithImpl<$Res, $Val extends RegionErrorModel>
    implements $RegionErrorModelCopyWith<$Res> {
  _$RegionErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
    Object? errCd = null,
  }) {
    return _then(_value.copyWith(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      errCd: null == errCd
          ? _value.errCd
          : errCd // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionErrorModelImplCopyWith<$Res>
    implements $RegionErrorModelCopyWith<$Res> {
  factory _$$RegionErrorModelImplCopyWith(_$RegionErrorModelImpl value,
          $Res Function(_$RegionErrorModelImpl) then) =
      __$$RegionErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errMsg, int errCd});
}

/// @nodoc
class __$$RegionErrorModelImplCopyWithImpl<$Res>
    extends _$RegionErrorModelCopyWithImpl<$Res, _$RegionErrorModelImpl>
    implements _$$RegionErrorModelImplCopyWith<$Res> {
  __$$RegionErrorModelImplCopyWithImpl(_$RegionErrorModelImpl _value,
      $Res Function(_$RegionErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
    Object? errCd = null,
  }) {
    return _then(_$RegionErrorModelImpl(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      errCd: null == errCd
          ? _value.errCd
          : errCd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionErrorModelImpl implements _RegionErrorModel {
  const _$RegionErrorModelImpl({required this.errMsg, required this.errCd});

  factory _$RegionErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionErrorModelImplFromJson(json);

  @override
  final String errMsg;
  @override
  final int errCd;

  @override
  String toString() {
    return 'RegionErrorModel(errMsg: $errMsg, errCd: $errCd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionErrorModelImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.errCd, errCd) || other.errCd == errCd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errMsg, errCd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionErrorModelImplCopyWith<_$RegionErrorModelImpl> get copyWith =>
      __$$RegionErrorModelImplCopyWithImpl<_$RegionErrorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionErrorModelImplToJson(
      this,
    );
  }
}

abstract class _RegionErrorModel implements RegionErrorModel {
  const factory _RegionErrorModel(
      {required final String errMsg,
      required final int errCd}) = _$RegionErrorModelImpl;

  factory _RegionErrorModel.fromJson(Map<String, dynamic> json) =
      _$RegionErrorModelImpl.fromJson;

  @override
  String get errMsg;
  @override
  int get errCd;
  @override
  @JsonKey(ignore: true)
  _$$RegionErrorModelImplCopyWith<_$RegionErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
