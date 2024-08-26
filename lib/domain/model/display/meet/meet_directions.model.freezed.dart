// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_directions.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetDirectionsModel _$MeetDirectionsModelFromJson(Map<String, dynamic> json) {
  return _MeetDirectionsModel.fromJson(json);
}

/// @nodoc
mixin _$MeetDirectionsModel {
  int get distance => throw _privateConstructorUsedError; // 전체 검색 결과 거리 ( 미터 )
  int get duration => throw _privateConstructorUsedError; // 목적지까지 소요 시간 ( 초 )
  String get longitudePaths =>
      throw _privateConstructorUsedError; // 경로 검색 ( 경도 좌표들 )
  String get latitudePaths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetDirectionsModelCopyWith<MeetDirectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetDirectionsModelCopyWith<$Res> {
  factory $MeetDirectionsModelCopyWith(
          MeetDirectionsModel value, $Res Function(MeetDirectionsModel) then) =
      _$MeetDirectionsModelCopyWithImpl<$Res, MeetDirectionsModel>;
  @useResult
  $Res call(
      {int distance,
      int duration,
      String longitudePaths,
      String latitudePaths});
}

/// @nodoc
class _$MeetDirectionsModelCopyWithImpl<$Res, $Val extends MeetDirectionsModel>
    implements $MeetDirectionsModelCopyWith<$Res> {
  _$MeetDirectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? longitudePaths = null,
    Object? latitudePaths = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      longitudePaths: null == longitudePaths
          ? _value.longitudePaths
          : longitudePaths // ignore: cast_nullable_to_non_nullable
              as String,
      latitudePaths: null == latitudePaths
          ? _value.latitudePaths
          : latitudePaths // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetDirectionsModelImplCopyWith<$Res>
    implements $MeetDirectionsModelCopyWith<$Res> {
  factory _$$MeetDirectionsModelImplCopyWith(_$MeetDirectionsModelImpl value,
          $Res Function(_$MeetDirectionsModelImpl) then) =
      __$$MeetDirectionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int distance,
      int duration,
      String longitudePaths,
      String latitudePaths});
}

/// @nodoc
class __$$MeetDirectionsModelImplCopyWithImpl<$Res>
    extends _$MeetDirectionsModelCopyWithImpl<$Res, _$MeetDirectionsModelImpl>
    implements _$$MeetDirectionsModelImplCopyWith<$Res> {
  __$$MeetDirectionsModelImplCopyWithImpl(_$MeetDirectionsModelImpl _value,
      $Res Function(_$MeetDirectionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? longitudePaths = null,
    Object? latitudePaths = null,
  }) {
    return _then(_$MeetDirectionsModelImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      longitudePaths: null == longitudePaths
          ? _value.longitudePaths
          : longitudePaths // ignore: cast_nullable_to_non_nullable
              as String,
      latitudePaths: null == latitudePaths
          ? _value.latitudePaths
          : latitudePaths // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetDirectionsModelImpl implements _MeetDirectionsModel {
  const _$MeetDirectionsModelImpl(
      {required this.distance,
      required this.duration,
      required this.longitudePaths,
      required this.latitudePaths});

  factory _$MeetDirectionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetDirectionsModelImplFromJson(json);

  @override
  final int distance;
// 전체 검색 결과 거리 ( 미터 )
  @override
  final int duration;
// 목적지까지 소요 시간 ( 초 )
  @override
  final String longitudePaths;
// 경로 검색 ( 경도 좌표들 )
  @override
  final String latitudePaths;

  @override
  String toString() {
    return 'MeetDirectionsModel(distance: $distance, duration: $duration, longitudePaths: $longitudePaths, latitudePaths: $latitudePaths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDirectionsModelImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.longitudePaths, longitudePaths) ||
                other.longitudePaths == longitudePaths) &&
            (identical(other.latitudePaths, latitudePaths) ||
                other.latitudePaths == latitudePaths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, distance, duration, longitudePaths, latitudePaths);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDirectionsModelImplCopyWith<_$MeetDirectionsModelImpl> get copyWith =>
      __$$MeetDirectionsModelImplCopyWithImpl<_$MeetDirectionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetDirectionsModelImplToJson(
      this,
    );
  }
}

abstract class _MeetDirectionsModel implements MeetDirectionsModel {
  const factory _MeetDirectionsModel(
      {required final int distance,
      required final int duration,
      required final String longitudePaths,
      required final String latitudePaths}) = _$MeetDirectionsModelImpl;

  factory _MeetDirectionsModel.fromJson(Map<String, dynamic> json) =
      _$MeetDirectionsModelImpl.fromJson;

  @override
  int get distance;
  @override // 전체 검색 결과 거리 ( 미터 )
  int get duration;
  @override // 목적지까지 소요 시간 ( 초 )
  String get longitudePaths;
  @override // 경로 검색 ( 경도 좌표들 )
  String get latitudePaths;
  @override
  @JsonKey(ignore: true)
  _$$MeetDirectionsModelImplCopyWith<_$MeetDirectionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
