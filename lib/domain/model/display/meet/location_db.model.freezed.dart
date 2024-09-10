// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_db.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationDbModel _$LocationDbModelFromJson(Map<String, dynamic> json) {
  return _LocationDbModel.fromJson(json);
}

/// @nodoc
mixin _$LocationDbModel {
  String get location_id => throw _privateConstructorUsedError;
  List<MeetAddressModel> get starting_point_list =>
      throw _privateConstructorUsedError;
  List<TourLocationModel> get destination_point =>
      throw _privateConstructorUsedError;

  /// Serializes this LocationDbModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDbModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDbModelCopyWith<LocationDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDbModelCopyWith<$Res> {
  factory $LocationDbModelCopyWith(
          LocationDbModel value, $Res Function(LocationDbModel) then) =
      _$LocationDbModelCopyWithImpl<$Res, LocationDbModel>;
  @useResult
  $Res call(
      {String location_id,
      List<MeetAddressModel> starting_point_list,
      List<TourLocationModel> destination_point});
}

/// @nodoc
class _$LocationDbModelCopyWithImpl<$Res, $Val extends LocationDbModel>
    implements $LocationDbModelCopyWith<$Res> {
  _$LocationDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDbModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = null,
    Object? starting_point_list = null,
    Object? destination_point = null,
  }) {
    return _then(_value.copyWith(
      location_id: null == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as String,
      starting_point_list: null == starting_point_list
          ? _value.starting_point_list
          : starting_point_list // ignore: cast_nullable_to_non_nullable
              as List<MeetAddressModel>,
      destination_point: null == destination_point
          ? _value.destination_point
          : destination_point // ignore: cast_nullable_to_non_nullable
              as List<TourLocationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDbModelImplCopyWith<$Res>
    implements $LocationDbModelCopyWith<$Res> {
  factory _$$LocationDbModelImplCopyWith(_$LocationDbModelImpl value,
          $Res Function(_$LocationDbModelImpl) then) =
      __$$LocationDbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location_id,
      List<MeetAddressModel> starting_point_list,
      List<TourLocationModel> destination_point});
}

/// @nodoc
class __$$LocationDbModelImplCopyWithImpl<$Res>
    extends _$LocationDbModelCopyWithImpl<$Res, _$LocationDbModelImpl>
    implements _$$LocationDbModelImplCopyWith<$Res> {
  __$$LocationDbModelImplCopyWithImpl(
      _$LocationDbModelImpl _value, $Res Function(_$LocationDbModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationDbModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = null,
    Object? starting_point_list = null,
    Object? destination_point = null,
  }) {
    return _then(_$LocationDbModelImpl(
      location_id: null == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as String,
      starting_point_list: null == starting_point_list
          ? _value._starting_point_list
          : starting_point_list // ignore: cast_nullable_to_non_nullable
              as List<MeetAddressModel>,
      destination_point: null == destination_point
          ? _value._destination_point
          : destination_point // ignore: cast_nullable_to_non_nullable
              as List<TourLocationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDbModelImpl implements _LocationDbModel {
  const _$LocationDbModelImpl(
      {required this.location_id,
      final List<MeetAddressModel> starting_point_list = const [],
      final List<TourLocationModel> destination_point = const []})
      : _starting_point_list = starting_point_list,
        _destination_point = destination_point;

  factory _$LocationDbModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDbModelImplFromJson(json);

  @override
  final String location_id;
  final List<MeetAddressModel> _starting_point_list;
  @override
  @JsonKey()
  List<MeetAddressModel> get starting_point_list {
    if (_starting_point_list is EqualUnmodifiableListView)
      return _starting_point_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_starting_point_list);
  }

  final List<TourLocationModel> _destination_point;
  @override
  @JsonKey()
  List<TourLocationModel> get destination_point {
    if (_destination_point is EqualUnmodifiableListView)
      return _destination_point;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destination_point);
  }

  @override
  String toString() {
    return 'LocationDbModel(location_id: $location_id, starting_point_list: $starting_point_list, destination_point: $destination_point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDbModelImpl &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            const DeepCollectionEquality()
                .equals(other._starting_point_list, _starting_point_list) &&
            const DeepCollectionEquality()
                .equals(other._destination_point, _destination_point));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      location_id,
      const DeepCollectionEquality().hash(_starting_point_list),
      const DeepCollectionEquality().hash(_destination_point));

  /// Create a copy of LocationDbModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDbModelImplCopyWith<_$LocationDbModelImpl> get copyWith =>
      __$$LocationDbModelImplCopyWithImpl<_$LocationDbModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDbModelImplToJson(
      this,
    );
  }
}

abstract class _LocationDbModel implements LocationDbModel {
  const factory _LocationDbModel(
      {required final String location_id,
      final List<MeetAddressModel> starting_point_list,
      final List<TourLocationModel> destination_point}) = _$LocationDbModelImpl;

  factory _LocationDbModel.fromJson(Map<String, dynamic> json) =
      _$LocationDbModelImpl.fromJson;

  @override
  String get location_id;
  @override
  List<MeetAddressModel> get starting_point_list;
  @override
  List<TourLocationModel> get destination_point;

  /// Create a copy of LocationDbModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDbModelImplCopyWith<_$LocationDbModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
