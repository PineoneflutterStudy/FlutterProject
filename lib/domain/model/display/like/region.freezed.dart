// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionModel _$RegionModelFromJson(Map<String, dynamic> json) {
  return _RegionModel.fromJson(json);
}

/// @nodoc
mixin _$RegionModel {
  String get cd => throw _privateConstructorUsedError;
  String get addr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionModelCopyWith<RegionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionModelCopyWith<$Res> {
  factory $RegionModelCopyWith(
          RegionModel value, $Res Function(RegionModel) then) =
      _$RegionModelCopyWithImpl<$Res, RegionModel>;
  @useResult
  $Res call({String cd, String addr});
}

/// @nodoc
class _$RegionModelCopyWithImpl<$Res, $Val extends RegionModel>
    implements $RegionModelCopyWith<$Res> {
  _$RegionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cd = null,
    Object? addr = null,
  }) {
    return _then(_value.copyWith(
      cd: null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String,
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionModelImplCopyWith<$Res>
    implements $RegionModelCopyWith<$Res> {
  factory _$$RegionModelImplCopyWith(
          _$RegionModelImpl value, $Res Function(_$RegionModelImpl) then) =
      __$$RegionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cd, String addr});
}

/// @nodoc
class __$$RegionModelImplCopyWithImpl<$Res>
    extends _$RegionModelCopyWithImpl<$Res, _$RegionModelImpl>
    implements _$$RegionModelImplCopyWith<$Res> {
  __$$RegionModelImplCopyWithImpl(
      _$RegionModelImpl _value, $Res Function(_$RegionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cd = null,
    Object? addr = null,
  }) {
    return _then(_$RegionModelImpl(
      cd: null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String,
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionModelImpl implements _RegionModel {
  const _$RegionModelImpl({required this.cd, required this.addr});

  factory _$RegionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionModelImplFromJson(json);

  @override
  final String cd;
  @override
  final String addr;

  @override
  String toString() {
    return 'RegionModel(cd: $cd, addr: $addr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionModelImpl &&
            (identical(other.cd, cd) || other.cd == cd) &&
            (identical(other.addr, addr) || other.addr == addr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cd, addr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionModelImplCopyWith<_$RegionModelImpl> get copyWith =>
      __$$RegionModelImplCopyWithImpl<_$RegionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionModelImplToJson(
      this,
    );
  }
}

abstract class _RegionModel implements RegionModel {
  const factory _RegionModel(
      {required final String cd,
      required final String addr}) = _$RegionModelImpl;

  factory _RegionModel.fromJson(Map<String, dynamic> json) =
      _$RegionModelImpl.fromJson;

  @override
  String get cd;
  @override
  String get addr;
  @override
  @JsonKey(ignore: true)
  _$$RegionModelImplCopyWith<_$RegionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
