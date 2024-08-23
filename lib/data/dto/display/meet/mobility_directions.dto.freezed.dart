// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobility_directions.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobilityDirectionsDto _$MobilityDirectionsDtoFromJson(
    Map<String, dynamic> json) {
  return _MobilityDirectionsDto.fromJson(json);
}

/// @nodoc
mixin _$MobilityDirectionsDto {
  String get name => throw _privateConstructorUsedError; // 도로명
  int get distance => throw _privateConstructorUsedError; // 도로 길이 ( 미터 )
  int get duration => throw _privateConstructorUsedError; // 예상 이동 시간 ( 초 )
  double get traffic_speed =>
      throw _privateConstructorUsedError; // 현재 교통 정보 속도 ( km/h )
  int get traffic_state => throw _privateConstructorUsedError; // 현재 교통 정보 상태
  List<double> get vertexes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobilityDirectionsDtoCopyWith<MobilityDirectionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobilityDirectionsDtoCopyWith<$Res> {
  factory $MobilityDirectionsDtoCopyWith(MobilityDirectionsDto value,
          $Res Function(MobilityDirectionsDto) then) =
      _$MobilityDirectionsDtoCopyWithImpl<$Res, MobilityDirectionsDto>;
  @useResult
  $Res call(
      {String name,
      int distance,
      int duration,
      double traffic_speed,
      int traffic_state,
      List<double> vertexes});
}

/// @nodoc
class _$MobilityDirectionsDtoCopyWithImpl<$Res,
        $Val extends MobilityDirectionsDto>
    implements $MobilityDirectionsDtoCopyWith<$Res> {
  _$MobilityDirectionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? distance = null,
    Object? duration = null,
    Object? traffic_speed = null,
    Object? traffic_state = null,
    Object? vertexes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      traffic_speed: null == traffic_speed
          ? _value.traffic_speed
          : traffic_speed // ignore: cast_nullable_to_non_nullable
              as double,
      traffic_state: null == traffic_state
          ? _value.traffic_state
          : traffic_state // ignore: cast_nullable_to_non_nullable
              as int,
      vertexes: null == vertexes
          ? _value.vertexes
          : vertexes // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobilityDirectionsDtoImplCopyWith<$Res>
    implements $MobilityDirectionsDtoCopyWith<$Res> {
  factory _$$MobilityDirectionsDtoImplCopyWith(
          _$MobilityDirectionsDtoImpl value,
          $Res Function(_$MobilityDirectionsDtoImpl) then) =
      __$$MobilityDirectionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int distance,
      int duration,
      double traffic_speed,
      int traffic_state,
      List<double> vertexes});
}

/// @nodoc
class __$$MobilityDirectionsDtoImplCopyWithImpl<$Res>
    extends _$MobilityDirectionsDtoCopyWithImpl<$Res,
        _$MobilityDirectionsDtoImpl>
    implements _$$MobilityDirectionsDtoImplCopyWith<$Res> {
  __$$MobilityDirectionsDtoImplCopyWithImpl(_$MobilityDirectionsDtoImpl _value,
      $Res Function(_$MobilityDirectionsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? distance = null,
    Object? duration = null,
    Object? traffic_speed = null,
    Object? traffic_state = null,
    Object? vertexes = null,
  }) {
    return _then(_$MobilityDirectionsDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      traffic_speed: null == traffic_speed
          ? _value.traffic_speed
          : traffic_speed // ignore: cast_nullable_to_non_nullable
              as double,
      traffic_state: null == traffic_state
          ? _value.traffic_state
          : traffic_state // ignore: cast_nullable_to_non_nullable
              as int,
      vertexes: null == vertexes
          ? _value._vertexes
          : vertexes // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobilityDirectionsDtoImpl implements _MobilityDirectionsDto {
  const _$MobilityDirectionsDtoImpl(
      {required this.name,
      required this.distance,
      required this.duration,
      required this.traffic_speed,
      required this.traffic_state,
      required final List<double> vertexes})
      : _vertexes = vertexes;

  factory _$MobilityDirectionsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobilityDirectionsDtoImplFromJson(json);

  @override
  final String name;
// 도로명
  @override
  final int distance;
// 도로 길이 ( 미터 )
  @override
  final int duration;
// 예상 이동 시간 ( 초 )
  @override
  final double traffic_speed;
// 현재 교통 정보 속도 ( km/h )
  @override
  final int traffic_state;
// 현재 교통 정보 상태
  final List<double> _vertexes;
// 현재 교통 정보 상태
  @override
  List<double> get vertexes {
    if (_vertexes is EqualUnmodifiableListView) return _vertexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertexes);
  }

  @override
  String toString() {
    return 'MobilityDirectionsDto(name: $name, distance: $distance, duration: $duration, traffic_speed: $traffic_speed, traffic_state: $traffic_state, vertexes: $vertexes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobilityDirectionsDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.traffic_speed, traffic_speed) ||
                other.traffic_speed == traffic_speed) &&
            (identical(other.traffic_state, traffic_state) ||
                other.traffic_state == traffic_state) &&
            const DeepCollectionEquality().equals(other._vertexes, _vertexes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      distance,
      duration,
      traffic_speed,
      traffic_state,
      const DeepCollectionEquality().hash(_vertexes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobilityDirectionsDtoImplCopyWith<_$MobilityDirectionsDtoImpl>
      get copyWith => __$$MobilityDirectionsDtoImplCopyWithImpl<
          _$MobilityDirectionsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobilityDirectionsDtoImplToJson(
      this,
    );
  }
}

abstract class _MobilityDirectionsDto implements MobilityDirectionsDto {
  const factory _MobilityDirectionsDto(
      {required final String name,
      required final int distance,
      required final int duration,
      required final double traffic_speed,
      required final int traffic_state,
      required final List<double> vertexes}) = _$MobilityDirectionsDtoImpl;

  factory _MobilityDirectionsDto.fromJson(Map<String, dynamic> json) =
      _$MobilityDirectionsDtoImpl.fromJson;

  @override
  String get name;
  @override // 도로명
  int get distance;
  @override // 도로 길이 ( 미터 )
  int get duration;
  @override // 예상 이동 시간 ( 초 )
  double get traffic_speed;
  @override // 현재 교통 정보 속도 ( km/h )
  int get traffic_state;
  @override // 현재 교통 정보 상태
  List<double> get vertexes;
  @override
  @JsonKey(ignore: true)
  _$$MobilityDirectionsDtoImplCopyWith<_$MobilityDirectionsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
