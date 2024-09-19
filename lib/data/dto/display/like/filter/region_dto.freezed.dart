// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionDto _$RegionDtoFromJson(Map<String, dynamic> json) {
  return _RegionDto.fromJson(json);
}

/// @nodoc
mixin _$RegionDto {
  String? get id => throw _privateConstructorUsedError;
  List<ResultDto>? get result => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  int get errCd => throw _privateConstructorUsedError;
  String get trId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionDtoCopyWith<RegionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionDtoCopyWith<$Res> {
  factory $RegionDtoCopyWith(RegionDto value, $Res Function(RegionDto) then) =
      _$RegionDtoCopyWithImpl<$Res, RegionDto>;
  @useResult
  $Res call(
      {String? id,
      List<ResultDto>? result,
      String errMsg,
      int errCd,
      String trId});
}

/// @nodoc
class _$RegionDtoCopyWithImpl<$Res, $Val extends RegionDto>
    implements $RegionDtoCopyWith<$Res> {
  _$RegionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
    Object? errMsg = null,
    Object? errCd = null,
    Object? trId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultDto>?,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      errCd: null == errCd
          ? _value.errCd
          : errCd // ignore: cast_nullable_to_non_nullable
              as int,
      trId: null == trId
          ? _value.trId
          : trId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionDtoImplCopyWith<$Res>
    implements $RegionDtoCopyWith<$Res> {
  factory _$$RegionDtoImplCopyWith(
          _$RegionDtoImpl value, $Res Function(_$RegionDtoImpl) then) =
      __$$RegionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<ResultDto>? result,
      String errMsg,
      int errCd,
      String trId});
}

/// @nodoc
class __$$RegionDtoImplCopyWithImpl<$Res>
    extends _$RegionDtoCopyWithImpl<$Res, _$RegionDtoImpl>
    implements _$$RegionDtoImplCopyWith<$Res> {
  __$$RegionDtoImplCopyWithImpl(
      _$RegionDtoImpl _value, $Res Function(_$RegionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
    Object? errMsg = null,
    Object? errCd = null,
    Object? trId = null,
  }) {
    return _then(_$RegionDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultDto>?,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      errCd: null == errCd
          ? _value.errCd
          : errCd // ignore: cast_nullable_to_non_nullable
              as int,
      trId: null == trId
          ? _value.trId
          : trId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionDtoImpl implements _RegionDto {
  const _$RegionDtoImpl(
      {required this.id,
      required final List<ResultDto>? result,
      required this.errMsg,
      required this.errCd,
      required this.trId})
      : _result = result;

  factory _$RegionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionDtoImplFromJson(json);

  @override
  final String? id;
  final List<ResultDto>? _result;
  @override
  List<ResultDto>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String errMsg;
  @override
  final int errCd;
  @override
  final String trId;

  @override
  String toString() {
    return 'RegionDto(id: $id, result: $result, errMsg: $errMsg, errCd: $errCd, trId: $trId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.errCd, errCd) || other.errCd == errCd) &&
            (identical(other.trId, trId) || other.trId == trId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_result), errMsg, errCd, trId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionDtoImplCopyWith<_$RegionDtoImpl> get copyWith =>
      __$$RegionDtoImplCopyWithImpl<_$RegionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionDtoImplToJson(
      this,
    );
  }
}

abstract class _RegionDto implements RegionDto {
  const factory _RegionDto(
      {required final String? id,
      required final List<ResultDto>? result,
      required final String errMsg,
      required final int errCd,
      required final String trId}) = _$RegionDtoImpl;

  factory _RegionDto.fromJson(Map<String, dynamic> json) =
      _$RegionDtoImpl.fromJson;

  @override
  String? get id;
  @override
  List<ResultDto>? get result;
  @override
  String get errMsg;
  @override
  int get errCd;
  @override
  String get trId;
  @override
  @JsonKey(ignore: true)
  _$$RegionDtoImplCopyWith<_$RegionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) {
  return _ResultDto.fromJson(json);
}

/// @nodoc
mixin _$ResultDto {
  String? get y_coor => throw _privateConstructorUsedError;
  String? get full_addr => throw _privateConstructorUsedError;
  String? get x_coor => throw _privateConstructorUsedError;
  String? get addr_name => throw _privateConstructorUsedError;
  String? get cd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDtoCopyWith<ResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDtoCopyWith<$Res> {
  factory $ResultDtoCopyWith(ResultDto value, $Res Function(ResultDto) then) =
      _$ResultDtoCopyWithImpl<$Res, ResultDto>;
  @useResult
  $Res call(
      {String? y_coor,
      String? full_addr,
      String? x_coor,
      String? addr_name,
      String? cd});
}

/// @nodoc
class _$ResultDtoCopyWithImpl<$Res, $Val extends ResultDto>
    implements $ResultDtoCopyWith<$Res> {
  _$ResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? y_coor = freezed,
    Object? full_addr = freezed,
    Object? x_coor = freezed,
    Object? addr_name = freezed,
    Object? cd = freezed,
  }) {
    return _then(_value.copyWith(
      y_coor: freezed == y_coor
          ? _value.y_coor
          : y_coor // ignore: cast_nullable_to_non_nullable
              as String?,
      full_addr: freezed == full_addr
          ? _value.full_addr
          : full_addr // ignore: cast_nullable_to_non_nullable
              as String?,
      x_coor: freezed == x_coor
          ? _value.x_coor
          : x_coor // ignore: cast_nullable_to_non_nullable
              as String?,
      addr_name: freezed == addr_name
          ? _value.addr_name
          : addr_name // ignore: cast_nullable_to_non_nullable
              as String?,
      cd: freezed == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDtoImplCopyWith<$Res>
    implements $ResultDtoCopyWith<$Res> {
  factory _$$ResultDtoImplCopyWith(
          _$ResultDtoImpl value, $Res Function(_$ResultDtoImpl) then) =
      __$$ResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? y_coor,
      String? full_addr,
      String? x_coor,
      String? addr_name,
      String? cd});
}

/// @nodoc
class __$$ResultDtoImplCopyWithImpl<$Res>
    extends _$ResultDtoCopyWithImpl<$Res, _$ResultDtoImpl>
    implements _$$ResultDtoImplCopyWith<$Res> {
  __$$ResultDtoImplCopyWithImpl(
      _$ResultDtoImpl _value, $Res Function(_$ResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? y_coor = freezed,
    Object? full_addr = freezed,
    Object? x_coor = freezed,
    Object? addr_name = freezed,
    Object? cd = freezed,
  }) {
    return _then(_$ResultDtoImpl(
      y_coor: freezed == y_coor
          ? _value.y_coor
          : y_coor // ignore: cast_nullable_to_non_nullable
              as String?,
      full_addr: freezed == full_addr
          ? _value.full_addr
          : full_addr // ignore: cast_nullable_to_non_nullable
              as String?,
      x_coor: freezed == x_coor
          ? _value.x_coor
          : x_coor // ignore: cast_nullable_to_non_nullable
              as String?,
      addr_name: freezed == addr_name
          ? _value.addr_name
          : addr_name // ignore: cast_nullable_to_non_nullable
              as String?,
      cd: freezed == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDtoImpl implements _ResultDto {
  const _$ResultDtoImpl(
      {required this.y_coor,
      required this.full_addr,
      required this.x_coor,
      required this.addr_name,
      required this.cd});

  factory _$ResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDtoImplFromJson(json);

  @override
  final String? y_coor;
  @override
  final String? full_addr;
  @override
  final String? x_coor;
  @override
  final String? addr_name;
  @override
  final String? cd;

  @override
  String toString() {
    return 'ResultDto(y_coor: $y_coor, full_addr: $full_addr, x_coor: $x_coor, addr_name: $addr_name, cd: $cd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDtoImpl &&
            (identical(other.y_coor, y_coor) || other.y_coor == y_coor) &&
            (identical(other.full_addr, full_addr) ||
                other.full_addr == full_addr) &&
            (identical(other.x_coor, x_coor) || other.x_coor == x_coor) &&
            (identical(other.addr_name, addr_name) ||
                other.addr_name == addr_name) &&
            (identical(other.cd, cd) || other.cd == cd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, y_coor, full_addr, x_coor, addr_name, cd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDtoImplCopyWith<_$ResultDtoImpl> get copyWith =>
      __$$ResultDtoImplCopyWithImpl<_$ResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDtoImplToJson(
      this,
    );
  }
}

abstract class _ResultDto implements ResultDto {
  const factory _ResultDto(
      {required final String? y_coor,
      required final String? full_addr,
      required final String? x_coor,
      required final String? addr_name,
      required final String? cd}) = _$ResultDtoImpl;

  factory _ResultDto.fromJson(Map<String, dynamic> json) =
      _$ResultDtoImpl.fromJson;

  @override
  String? get y_coor;
  @override
  String? get full_addr;
  @override
  String? get x_coor;
  @override
  String? get addr_name;
  @override
  String? get cd;
  @override
  @JsonKey(ignore: true)
  _$$ResultDtoImplCopyWith<_$ResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
