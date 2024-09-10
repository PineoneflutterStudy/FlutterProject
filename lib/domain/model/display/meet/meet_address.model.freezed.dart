// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_address.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetAddressModel _$MeetAddressModelFromJson(Map<String, dynamic> json) {
  return _MeetAddressModel.fromJson(json);
}

/// @nodoc
mixin _$MeetAddressModel {
  int get index => throw _privateConstructorUsedError; // index
  String get address => throw _privateConstructorUsedError; // 주소
  double get latitude => throw _privateConstructorUsedError; // 위도
  double get longitude => throw _privateConstructorUsedError; // 경도
  int get totalDistance => throw _privateConstructorUsedError; // 총 거리(m)
  int get totalDuration => throw _privateConstructorUsedError;

  /// Serializes this MeetAddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetAddressModelCopyWith<MeetAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetAddressModelCopyWith<$Res> {
  factory $MeetAddressModelCopyWith(
          MeetAddressModel value, $Res Function(MeetAddressModel) then) =
      _$MeetAddressModelCopyWithImpl<$Res, MeetAddressModel>;
  @useResult
  $Res call(
      {int index,
      String address,
      double latitude,
      double longitude,
      int totalDistance,
      int totalDuration});
}

/// @nodoc
class _$MeetAddressModelCopyWithImpl<$Res, $Val extends MeetAddressModel>
    implements $MeetAddressModelCopyWith<$Res> {
  _$MeetAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetAddressModelImplCopyWith<$Res>
    implements $MeetAddressModelCopyWith<$Res> {
  factory _$$MeetAddressModelImplCopyWith(_$MeetAddressModelImpl value,
          $Res Function(_$MeetAddressModelImpl) then) =
      __$$MeetAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String address,
      double latitude,
      double longitude,
      int totalDistance,
      int totalDuration});
}

/// @nodoc
class __$$MeetAddressModelImplCopyWithImpl<$Res>
    extends _$MeetAddressModelCopyWithImpl<$Res, _$MeetAddressModelImpl>
    implements _$$MeetAddressModelImplCopyWith<$Res> {
  __$$MeetAddressModelImplCopyWithImpl(_$MeetAddressModelImpl _value,
      $Res Function(_$MeetAddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_$MeetAddressModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetAddressModelImpl implements _MeetAddressModel {
  const _$MeetAddressModelImpl(
      {required this.index,
      required this.address,
      required this.latitude,
      required this.longitude,
      required this.totalDistance,
      required this.totalDuration});

  factory _$MeetAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetAddressModelImplFromJson(json);

  @override
  final int index;
// index
  @override
  final String address;
// 주소
  @override
  final double latitude;
// 위도
  @override
  final double longitude;
// 경도
  @override
  final int totalDistance;
// 총 거리(m)
  @override
  final int totalDuration;

  @override
  String toString() {
    return 'MeetAddressModel(index: $index, address: $address, latitude: $latitude, longitude: $longitude, totalDistance: $totalDistance, totalDuration: $totalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetAddressModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, address, latitude,
      longitude, totalDistance, totalDuration);

  /// Create a copy of MeetAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetAddressModelImplCopyWith<_$MeetAddressModelImpl> get copyWith =>
      __$$MeetAddressModelImplCopyWithImpl<_$MeetAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetAddressModelImplToJson(
      this,
    );
  }
}

abstract class _MeetAddressModel implements MeetAddressModel {
  const factory _MeetAddressModel(
      {required final int index,
      required final String address,
      required final double latitude,
      required final double longitude,
      required final int totalDistance,
      required final int totalDuration}) = _$MeetAddressModelImpl;

  factory _MeetAddressModel.fromJson(Map<String, dynamic> json) =
      _$MeetAddressModelImpl.fromJson;

  @override
  int get index; // index
  @override
  String get address; // 주소
  @override
  double get latitude; // 위도
  @override
  double get longitude; // 경도
  @override
  int get totalDistance; // 총 거리(m)
  @override
  int get totalDuration;

  /// Create a copy of MeetAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetAddressModelImplCopyWith<_$MeetAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
