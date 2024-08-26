// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobility_directions.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobilityDirectionsModel _$MobilityDirectionsModelFromJson(
    Map<String, dynamic> json) {
  return _MobilityDirectionsModel.fromJson(json);
}

/// @nodoc
mixin _$MobilityDirectionsModel {
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  List<dynamic> get vertexes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobilityDirectionsModelCopyWith<MobilityDirectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobilityDirectionsModelCopyWith<$Res> {
  factory $MobilityDirectionsModelCopyWith(MobilityDirectionsModel value,
          $Res Function(MobilityDirectionsModel) then) =
      _$MobilityDirectionsModelCopyWithImpl<$Res, MobilityDirectionsModel>;
  @useResult
  $Res call({int distance, int duration, List<dynamic> vertexes});
}

/// @nodoc
class _$MobilityDirectionsModelCopyWithImpl<$Res,
        $Val extends MobilityDirectionsModel>
    implements $MobilityDirectionsModelCopyWith<$Res> {
  _$MobilityDirectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? vertexes = null,
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
      vertexes: null == vertexes
          ? _value.vertexes
          : vertexes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobilityDirectionsModelImplCopyWith<$Res>
    implements $MobilityDirectionsModelCopyWith<$Res> {
  factory _$$MobilityDirectionsModelImplCopyWith(
          _$MobilityDirectionsModelImpl value,
          $Res Function(_$MobilityDirectionsModelImpl) then) =
      __$$MobilityDirectionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int distance, int duration, List<dynamic> vertexes});
}

/// @nodoc
class __$$MobilityDirectionsModelImplCopyWithImpl<$Res>
    extends _$MobilityDirectionsModelCopyWithImpl<$Res,
        _$MobilityDirectionsModelImpl>
    implements _$$MobilityDirectionsModelImplCopyWith<$Res> {
  __$$MobilityDirectionsModelImplCopyWithImpl(
      _$MobilityDirectionsModelImpl _value,
      $Res Function(_$MobilityDirectionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? vertexes = null,
  }) {
    return _then(_$MobilityDirectionsModelImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      vertexes: null == vertexes
          ? _value._vertexes
          : vertexes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobilityDirectionsModelImpl implements _MobilityDirectionsModel {
  const _$MobilityDirectionsModelImpl(
      {required this.distance,
      required this.duration,
      required final List<dynamic> vertexes})
      : _vertexes = vertexes;

  factory _$MobilityDirectionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobilityDirectionsModelImplFromJson(json);

  @override
  final int distance;
  @override
  final int duration;
  final List<dynamic> _vertexes;
  @override
  List<dynamic> get vertexes {
    if (_vertexes is EqualUnmodifiableListView) return _vertexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertexes);
  }

  @override
  String toString() {
    return 'MobilityDirectionsModel(distance: $distance, duration: $duration, vertexes: $vertexes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobilityDirectionsModelImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._vertexes, _vertexes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration,
      const DeepCollectionEquality().hash(_vertexes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobilityDirectionsModelImplCopyWith<_$MobilityDirectionsModelImpl>
      get copyWith => __$$MobilityDirectionsModelImplCopyWithImpl<
          _$MobilityDirectionsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobilityDirectionsModelImplToJson(
      this,
    );
  }
}

abstract class _MobilityDirectionsModel implements MobilityDirectionsModel {
  const factory _MobilityDirectionsModel(
      {required final int distance,
      required final int duration,
      required final List<dynamic> vertexes}) = _$MobilityDirectionsModelImpl;

  factory _MobilityDirectionsModel.fromJson(Map<String, dynamic> json) =
      _$MobilityDirectionsModelImpl.fromJson;

  @override
  int get distance;
  @override
  int get duration;
  @override
  List<dynamic> get vertexes;
  @override
  @JsonKey(ignore: true)
  _$$MobilityDirectionsModelImplCopyWith<_$MobilityDirectionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
