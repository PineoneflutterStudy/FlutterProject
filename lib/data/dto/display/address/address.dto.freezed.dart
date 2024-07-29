// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  String get address_name => throw _privateConstructorUsedError;
  String get address_type => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  AddressInfo? get address => throw _privateConstructorUsedError;
  RoadAddressInfo? get road_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call(
      {String address_name,
      String address_type,
      String x,
      String y,
      AddressInfo? address,
      RoadAddressInfo? road_address});

  $AddressInfoCopyWith<$Res>? get address;
  $RoadAddressInfoCopyWith<$Res>? get road_address;
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? address_type = null,
    Object? x = null,
    Object? y = null,
    Object? address = freezed,
    Object? road_address = freezed,
  }) {
    return _then(_value.copyWith(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      address_type: null == address_type
          ? _value.address_type
          : address_type // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
      road_address: freezed == road_address
          ? _value.road_address
          : road_address // ignore: cast_nullable_to_non_nullable
              as RoadAddressInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressInfoCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressInfoCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoadAddressInfoCopyWith<$Res>? get road_address {
    if (_value.road_address == null) {
      return null;
    }

    return $RoadAddressInfoCopyWith<$Res>(_value.road_address!, (value) {
      return _then(_value.copyWith(road_address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address_name,
      String address_type,
      String x,
      String y,
      AddressInfo? address,
      RoadAddressInfo? road_address});

  @override
  $AddressInfoCopyWith<$Res>? get address;
  @override
  $RoadAddressInfoCopyWith<$Res>? get road_address;
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? address_type = null,
    Object? x = null,
    Object? y = null,
    Object? address = freezed,
    Object? road_address = freezed,
  }) {
    return _then(_$AddressDtoImpl(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      address_type: null == address_type
          ? _value.address_type
          : address_type // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
      road_address: freezed == road_address
          ? _value.road_address
          : road_address // ignore: cast_nullable_to_non_nullable
              as RoadAddressInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl with DiagnosticableTreeMixin implements _AddressDto {
  const _$AddressDtoImpl(
      {required this.address_name,
      required this.address_type,
      required this.x,
      required this.y,
      required this.address,
      required this.road_address});

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  final String address_name;
  @override
  final String address_type;
  @override
  final String x;
  @override
  final String y;
  @override
  final AddressInfo? address;
  @override
  final RoadAddressInfo? road_address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressDto(address_name: $address_name, address_type: $address_type, x: $x, y: $y, address: $address, road_address: $road_address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressDto'))
      ..add(DiagnosticsProperty('address_name', address_name))
      ..add(DiagnosticsProperty('address_type', address_type))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('road_address', road_address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.address_name, address_name) ||
                other.address_name == address_name) &&
            (identical(other.address_type, address_type) ||
                other.address_type == address_type) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.road_address, road_address) ||
                other.road_address == road_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, address_name, address_type, x, y, address, road_address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto implements AddressDto {
  const factory _AddressDto(
      {required final String address_name,
      required final String address_type,
      required final String x,
      required final String y,
      required final AddressInfo? address,
      required final RoadAddressInfo? road_address}) = _$AddressDtoImpl;

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  String get address_name;
  @override
  String get address_type;
  @override
  String get x;
  @override
  String get y;
  @override
  AddressInfo? get address;
  @override
  RoadAddressInfo? get road_address;
  @override
  @JsonKey(ignore: true)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) {
  return _AddressInfo.fromJson(json);
}

/// @nodoc
mixin _$AddressInfo {
  String get address_name => throw _privateConstructorUsedError;
  String get region_1depth_name => throw _privateConstructorUsedError;
  String get region_2depth_name => throw _privateConstructorUsedError;
  String get region_3depth_name => throw _privateConstructorUsedError;
  String get region_3depth_h_name => throw _privateConstructorUsedError;
  String get h_code => throw _privateConstructorUsedError;
  String get b_code => throw _privateConstructorUsedError;
  String get mountain_yn => throw _privateConstructorUsedError;
  String get main_address_no => throw _privateConstructorUsedError;
  String get sub_address_no => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressInfoCopyWith<AddressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressInfoCopyWith<$Res> {
  factory $AddressInfoCopyWith(
          AddressInfo value, $Res Function(AddressInfo) then) =
      _$AddressInfoCopyWithImpl<$Res, AddressInfo>;
  @useResult
  $Res call(
      {String address_name,
      String region_1depth_name,
      String region_2depth_name,
      String region_3depth_name,
      String region_3depth_h_name,
      String h_code,
      String b_code,
      String mountain_yn,
      String main_address_no,
      String sub_address_no,
      String x,
      String y});
}

/// @nodoc
class _$AddressInfoCopyWithImpl<$Res, $Val extends AddressInfo>
    implements $AddressInfoCopyWith<$Res> {
  _$AddressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? region_1depth_name = null,
    Object? region_2depth_name = null,
    Object? region_3depth_name = null,
    Object? region_3depth_h_name = null,
    Object? h_code = null,
    Object? b_code = null,
    Object? mountain_yn = null,
    Object? main_address_no = null,
    Object? sub_address_no = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_1depth_name: null == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_2depth_name: null == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_3depth_name: null == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_3depth_h_name: null == region_3depth_h_name
          ? _value.region_3depth_h_name
          : region_3depth_h_name // ignore: cast_nullable_to_non_nullable
              as String,
      h_code: null == h_code
          ? _value.h_code
          : h_code // ignore: cast_nullable_to_non_nullable
              as String,
      b_code: null == b_code
          ? _value.b_code
          : b_code // ignore: cast_nullable_to_non_nullable
              as String,
      mountain_yn: null == mountain_yn
          ? _value.mountain_yn
          : mountain_yn // ignore: cast_nullable_to_non_nullable
              as String,
      main_address_no: null == main_address_no
          ? _value.main_address_no
          : main_address_no // ignore: cast_nullable_to_non_nullable
              as String,
      sub_address_no: null == sub_address_no
          ? _value.sub_address_no
          : sub_address_no // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressInfoImplCopyWith<$Res>
    implements $AddressInfoCopyWith<$Res> {
  factory _$$AddressInfoImplCopyWith(
          _$AddressInfoImpl value, $Res Function(_$AddressInfoImpl) then) =
      __$$AddressInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address_name,
      String region_1depth_name,
      String region_2depth_name,
      String region_3depth_name,
      String region_3depth_h_name,
      String h_code,
      String b_code,
      String mountain_yn,
      String main_address_no,
      String sub_address_no,
      String x,
      String y});
}

/// @nodoc
class __$$AddressInfoImplCopyWithImpl<$Res>
    extends _$AddressInfoCopyWithImpl<$Res, _$AddressInfoImpl>
    implements _$$AddressInfoImplCopyWith<$Res> {
  __$$AddressInfoImplCopyWithImpl(
      _$AddressInfoImpl _value, $Res Function(_$AddressInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? region_1depth_name = null,
    Object? region_2depth_name = null,
    Object? region_3depth_name = null,
    Object? region_3depth_h_name = null,
    Object? h_code = null,
    Object? b_code = null,
    Object? mountain_yn = null,
    Object? main_address_no = null,
    Object? sub_address_no = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$AddressInfoImpl(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_1depth_name: null == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_2depth_name: null == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_3depth_name: null == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_3depth_h_name: null == region_3depth_h_name
          ? _value.region_3depth_h_name
          : region_3depth_h_name // ignore: cast_nullable_to_non_nullable
              as String,
      h_code: null == h_code
          ? _value.h_code
          : h_code // ignore: cast_nullable_to_non_nullable
              as String,
      b_code: null == b_code
          ? _value.b_code
          : b_code // ignore: cast_nullable_to_non_nullable
              as String,
      mountain_yn: null == mountain_yn
          ? _value.mountain_yn
          : mountain_yn // ignore: cast_nullable_to_non_nullable
              as String,
      main_address_no: null == main_address_no
          ? _value.main_address_no
          : main_address_no // ignore: cast_nullable_to_non_nullable
              as String,
      sub_address_no: null == sub_address_no
          ? _value.sub_address_no
          : sub_address_no // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressInfoImpl with DiagnosticableTreeMixin implements _AddressInfo {
  const _$AddressInfoImpl(
      {required this.address_name,
      required this.region_1depth_name,
      required this.region_2depth_name,
      required this.region_3depth_name,
      required this.region_3depth_h_name,
      required this.h_code,
      required this.b_code,
      required this.mountain_yn,
      required this.main_address_no,
      required this.sub_address_no,
      required this.x,
      required this.y});

  factory _$AddressInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressInfoImplFromJson(json);

  @override
  final String address_name;
  @override
  final String region_1depth_name;
  @override
  final String region_2depth_name;
  @override
  final String region_3depth_name;
  @override
  final String region_3depth_h_name;
  @override
  final String h_code;
  @override
  final String b_code;
  @override
  final String mountain_yn;
  @override
  final String main_address_no;
  @override
  final String sub_address_no;
  @override
  final String x;
  @override
  final String y;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressInfo(address_name: $address_name, region_1depth_name: $region_1depth_name, region_2depth_name: $region_2depth_name, region_3depth_name: $region_3depth_name, region_3depth_h_name: $region_3depth_h_name, h_code: $h_code, b_code: $b_code, mountain_yn: $mountain_yn, main_address_no: $main_address_no, sub_address_no: $sub_address_no, x: $x, y: $y)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressInfo'))
      ..add(DiagnosticsProperty('address_name', address_name))
      ..add(DiagnosticsProperty('region_1depth_name', region_1depth_name))
      ..add(DiagnosticsProperty('region_2depth_name', region_2depth_name))
      ..add(DiagnosticsProperty('region_3depth_name', region_3depth_name))
      ..add(DiagnosticsProperty('region_3depth_h_name', region_3depth_h_name))
      ..add(DiagnosticsProperty('h_code', h_code))
      ..add(DiagnosticsProperty('b_code', b_code))
      ..add(DiagnosticsProperty('mountain_yn', mountain_yn))
      ..add(DiagnosticsProperty('main_address_no', main_address_no))
      ..add(DiagnosticsProperty('sub_address_no', sub_address_no))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressInfoImpl &&
            (identical(other.address_name, address_name) ||
                other.address_name == address_name) &&
            (identical(other.region_1depth_name, region_1depth_name) ||
                other.region_1depth_name == region_1depth_name) &&
            (identical(other.region_2depth_name, region_2depth_name) ||
                other.region_2depth_name == region_2depth_name) &&
            (identical(other.region_3depth_name, region_3depth_name) ||
                other.region_3depth_name == region_3depth_name) &&
            (identical(other.region_3depth_h_name, region_3depth_h_name) ||
                other.region_3depth_h_name == region_3depth_h_name) &&
            (identical(other.h_code, h_code) || other.h_code == h_code) &&
            (identical(other.b_code, b_code) || other.b_code == b_code) &&
            (identical(other.mountain_yn, mountain_yn) ||
                other.mountain_yn == mountain_yn) &&
            (identical(other.main_address_no, main_address_no) ||
                other.main_address_no == main_address_no) &&
            (identical(other.sub_address_no, sub_address_no) ||
                other.sub_address_no == sub_address_no) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address_name,
      region_1depth_name,
      region_2depth_name,
      region_3depth_name,
      region_3depth_h_name,
      h_code,
      b_code,
      mountain_yn,
      main_address_no,
      sub_address_no,
      x,
      y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressInfoImplCopyWith<_$AddressInfoImpl> get copyWith =>
      __$$AddressInfoImplCopyWithImpl<_$AddressInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressInfoImplToJson(
      this,
    );
  }
}

abstract class _AddressInfo implements AddressInfo {
  const factory _AddressInfo(
      {required final String address_name,
      required final String region_1depth_name,
      required final String region_2depth_name,
      required final String region_3depth_name,
      required final String region_3depth_h_name,
      required final String h_code,
      required final String b_code,
      required final String mountain_yn,
      required final String main_address_no,
      required final String sub_address_no,
      required final String x,
      required final String y}) = _$AddressInfoImpl;

  factory _AddressInfo.fromJson(Map<String, dynamic> json) =
      _$AddressInfoImpl.fromJson;

  @override
  String get address_name;
  @override
  String get region_1depth_name;
  @override
  String get region_2depth_name;
  @override
  String get region_3depth_name;
  @override
  String get region_3depth_h_name;
  @override
  String get h_code;
  @override
  String get b_code;
  @override
  String get mountain_yn;
  @override
  String get main_address_no;
  @override
  String get sub_address_no;
  @override
  String get x;
  @override
  String get y;
  @override
  @JsonKey(ignore: true)
  _$$AddressInfoImplCopyWith<_$AddressInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoadAddressInfo _$RoadAddressInfoFromJson(Map<String, dynamic> json) {
  return _RoadAddressInfo.fromJson(json);
}

/// @nodoc
mixin _$RoadAddressInfo {
  String get address_name => throw _privateConstructorUsedError;
  String get region_1depth_name => throw _privateConstructorUsedError;
  String get region_2depth_name => throw _privateConstructorUsedError;
  String get region_3depth_name => throw _privateConstructorUsedError;
  String get road_name => throw _privateConstructorUsedError;
  String get underground_yn => throw _privateConstructorUsedError;
  String get main_building_no => throw _privateConstructorUsedError;
  String get sub_building_no => throw _privateConstructorUsedError;
  String get building_name => throw _privateConstructorUsedError;
  String get zone_no => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoadAddressInfoCopyWith<RoadAddressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadAddressInfoCopyWith<$Res> {
  factory $RoadAddressInfoCopyWith(
          RoadAddressInfo value, $Res Function(RoadAddressInfo) then) =
      _$RoadAddressInfoCopyWithImpl<$Res, RoadAddressInfo>;
  @useResult
  $Res call(
      {String address_name,
      String region_1depth_name,
      String region_2depth_name,
      String region_3depth_name,
      String road_name,
      String underground_yn,
      String main_building_no,
      String sub_building_no,
      String building_name,
      String zone_no,
      String x,
      String y});
}

/// @nodoc
class _$RoadAddressInfoCopyWithImpl<$Res, $Val extends RoadAddressInfo>
    implements $RoadAddressInfoCopyWith<$Res> {
  _$RoadAddressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? region_1depth_name = null,
    Object? region_2depth_name = null,
    Object? region_3depth_name = null,
    Object? road_name = null,
    Object? underground_yn = null,
    Object? main_building_no = null,
    Object? sub_building_no = null,
    Object? building_name = null,
    Object? zone_no = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_1depth_name: null == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_2depth_name: null == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_3depth_name: null == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      road_name: null == road_name
          ? _value.road_name
          : road_name // ignore: cast_nullable_to_non_nullable
              as String,
      underground_yn: null == underground_yn
          ? _value.underground_yn
          : underground_yn // ignore: cast_nullable_to_non_nullable
              as String,
      main_building_no: null == main_building_no
          ? _value.main_building_no
          : main_building_no // ignore: cast_nullable_to_non_nullable
              as String,
      sub_building_no: null == sub_building_no
          ? _value.sub_building_no
          : sub_building_no // ignore: cast_nullable_to_non_nullable
              as String,
      building_name: null == building_name
          ? _value.building_name
          : building_name // ignore: cast_nullable_to_non_nullable
              as String,
      zone_no: null == zone_no
          ? _value.zone_no
          : zone_no // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadAddressInfoImplCopyWith<$Res>
    implements $RoadAddressInfoCopyWith<$Res> {
  factory _$$RoadAddressInfoImplCopyWith(_$RoadAddressInfoImpl value,
          $Res Function(_$RoadAddressInfoImpl) then) =
      __$$RoadAddressInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address_name,
      String region_1depth_name,
      String region_2depth_name,
      String region_3depth_name,
      String road_name,
      String underground_yn,
      String main_building_no,
      String sub_building_no,
      String building_name,
      String zone_no,
      String x,
      String y});
}

/// @nodoc
class __$$RoadAddressInfoImplCopyWithImpl<$Res>
    extends _$RoadAddressInfoCopyWithImpl<$Res, _$RoadAddressInfoImpl>
    implements _$$RoadAddressInfoImplCopyWith<$Res> {
  __$$RoadAddressInfoImplCopyWithImpl(
      _$RoadAddressInfoImpl _value, $Res Function(_$RoadAddressInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? region_1depth_name = null,
    Object? region_2depth_name = null,
    Object? region_3depth_name = null,
    Object? road_name = null,
    Object? underground_yn = null,
    Object? main_building_no = null,
    Object? sub_building_no = null,
    Object? building_name = null,
    Object? zone_no = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$RoadAddressInfoImpl(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_1depth_name: null == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_2depth_name: null == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_3depth_name: null == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String,
      road_name: null == road_name
          ? _value.road_name
          : road_name // ignore: cast_nullable_to_non_nullable
              as String,
      underground_yn: null == underground_yn
          ? _value.underground_yn
          : underground_yn // ignore: cast_nullable_to_non_nullable
              as String,
      main_building_no: null == main_building_no
          ? _value.main_building_no
          : main_building_no // ignore: cast_nullable_to_non_nullable
              as String,
      sub_building_no: null == sub_building_no
          ? _value.sub_building_no
          : sub_building_no // ignore: cast_nullable_to_non_nullable
              as String,
      building_name: null == building_name
          ? _value.building_name
          : building_name // ignore: cast_nullable_to_non_nullable
              as String,
      zone_no: null == zone_no
          ? _value.zone_no
          : zone_no // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadAddressInfoImpl
    with DiagnosticableTreeMixin
    implements _RoadAddressInfo {
  const _$RoadAddressInfoImpl(
      {required this.address_name,
      required this.region_1depth_name,
      required this.region_2depth_name,
      required this.region_3depth_name,
      required this.road_name,
      required this.underground_yn,
      required this.main_building_no,
      required this.sub_building_no,
      required this.building_name,
      required this.zone_no,
      required this.x,
      required this.y});

  factory _$RoadAddressInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadAddressInfoImplFromJson(json);

  @override
  final String address_name;
  @override
  final String region_1depth_name;
  @override
  final String region_2depth_name;
  @override
  final String region_3depth_name;
  @override
  final String road_name;
  @override
  final String underground_yn;
  @override
  final String main_building_no;
  @override
  final String sub_building_no;
  @override
  final String building_name;
  @override
  final String zone_no;
  @override
  final String x;
  @override
  final String y;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoadAddressInfo(address_name: $address_name, region_1depth_name: $region_1depth_name, region_2depth_name: $region_2depth_name, region_3depth_name: $region_3depth_name, road_name: $road_name, underground_yn: $underground_yn, main_building_no: $main_building_no, sub_building_no: $sub_building_no, building_name: $building_name, zone_no: $zone_no, x: $x, y: $y)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoadAddressInfo'))
      ..add(DiagnosticsProperty('address_name', address_name))
      ..add(DiagnosticsProperty('region_1depth_name', region_1depth_name))
      ..add(DiagnosticsProperty('region_2depth_name', region_2depth_name))
      ..add(DiagnosticsProperty('region_3depth_name', region_3depth_name))
      ..add(DiagnosticsProperty('road_name', road_name))
      ..add(DiagnosticsProperty('underground_yn', underground_yn))
      ..add(DiagnosticsProperty('main_building_no', main_building_no))
      ..add(DiagnosticsProperty('sub_building_no', sub_building_no))
      ..add(DiagnosticsProperty('building_name', building_name))
      ..add(DiagnosticsProperty('zone_no', zone_no))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadAddressInfoImpl &&
            (identical(other.address_name, address_name) ||
                other.address_name == address_name) &&
            (identical(other.region_1depth_name, region_1depth_name) ||
                other.region_1depth_name == region_1depth_name) &&
            (identical(other.region_2depth_name, region_2depth_name) ||
                other.region_2depth_name == region_2depth_name) &&
            (identical(other.region_3depth_name, region_3depth_name) ||
                other.region_3depth_name == region_3depth_name) &&
            (identical(other.road_name, road_name) ||
                other.road_name == road_name) &&
            (identical(other.underground_yn, underground_yn) ||
                other.underground_yn == underground_yn) &&
            (identical(other.main_building_no, main_building_no) ||
                other.main_building_no == main_building_no) &&
            (identical(other.sub_building_no, sub_building_no) ||
                other.sub_building_no == sub_building_no) &&
            (identical(other.building_name, building_name) ||
                other.building_name == building_name) &&
            (identical(other.zone_no, zone_no) || other.zone_no == zone_no) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address_name,
      region_1depth_name,
      region_2depth_name,
      region_3depth_name,
      road_name,
      underground_yn,
      main_building_no,
      sub_building_no,
      building_name,
      zone_no,
      x,
      y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadAddressInfoImplCopyWith<_$RoadAddressInfoImpl> get copyWith =>
      __$$RoadAddressInfoImplCopyWithImpl<_$RoadAddressInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadAddressInfoImplToJson(
      this,
    );
  }
}

abstract class _RoadAddressInfo implements RoadAddressInfo {
  const factory _RoadAddressInfo(
      {required final String address_name,
      required final String region_1depth_name,
      required final String region_2depth_name,
      required final String region_3depth_name,
      required final String road_name,
      required final String underground_yn,
      required final String main_building_no,
      required final String sub_building_no,
      required final String building_name,
      required final String zone_no,
      required final String x,
      required final String y}) = _$RoadAddressInfoImpl;

  factory _RoadAddressInfo.fromJson(Map<String, dynamic> json) =
      _$RoadAddressInfoImpl.fromJson;

  @override
  String get address_name;
  @override
  String get region_1depth_name;
  @override
  String get region_2depth_name;
  @override
  String get region_3depth_name;
  @override
  String get road_name;
  @override
  String get underground_yn;
  @override
  String get main_building_no;
  @override
  String get sub_building_no;
  @override
  String get building_name;
  @override
  String get zone_no;
  @override
  String get x;
  @override
  String get y;
  @override
  @JsonKey(ignore: true)
  _$$RoadAddressInfoImplCopyWith<_$RoadAddressInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
