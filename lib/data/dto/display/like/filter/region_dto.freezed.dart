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
  List<Result>? get result => throw _privateConstructorUsedError;

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
  $Res call({String? id, List<Result>? result});
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
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
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
  $Res call({String? id, List<Result>? result});
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
  }) {
    return _then(_$RegionDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionDtoImpl implements _RegionDto {
  const _$RegionDtoImpl({required this.id, required final List<Result>? result})
      : _result = result;

  factory _$RegionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionDtoImplFromJson(json);

  @override
  final String? id;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegionDto(id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_result));

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
      required final List<Result>? result}) = _$RegionDtoImpl;

  factory _RegionDto.fromJson(Map<String, dynamic> json) =
      _$RegionDtoImpl.fromJson;

  @override
  String? get id;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$RegionDtoImplCopyWith<_$RegionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get y_coor => throw _privateConstructorUsedError;
  String? get full_addr => throw _privateConstructorUsedError;
  String? get x_coor => throw _privateConstructorUsedError;
  String? get addr_name => throw _privateConstructorUsedError;
  String? get cd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? y_coor,
      String? full_addr,
      String? x_coor,
      String? addr_name,
      String? cd});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
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
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
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
    return _then(_$ResultImpl(
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
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {required this.y_coor,
      required this.full_addr,
      required this.x_coor,
      required this.addr_name,
      required this.cd});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

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
    return 'Result(y_coor: $y_coor, full_addr: $full_addr, x_coor: $x_coor, addr_name: $addr_name, cd: $cd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
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
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String? y_coor,
      required final String? full_addr,
      required final String? x_coor,
      required final String? addr_name,
      required final String? cd}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

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
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
