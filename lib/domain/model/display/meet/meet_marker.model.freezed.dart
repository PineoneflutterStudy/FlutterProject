// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_marker.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetMarkerModel _$MeetMarkerModelFromJson(Map<String, dynamic> json) {
  return _MeetMarkerModel.fromJson(json);
}

/// @nodoc
mixin _$MeetMarkerModel {
  String get imagePath => throw _privateConstructorUsedError;
  int get loadColorValue => throw _privateConstructorUsedError;

  /// Serializes this MeetMarkerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetMarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetMarkerModelCopyWith<MeetMarkerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetMarkerModelCopyWith<$Res> {
  factory $MeetMarkerModelCopyWith(
          MeetMarkerModel value, $Res Function(MeetMarkerModel) then) =
      _$MeetMarkerModelCopyWithImpl<$Res, MeetMarkerModel>;
  @useResult
  $Res call({String imagePath, int loadColorValue});
}

/// @nodoc
class _$MeetMarkerModelCopyWithImpl<$Res, $Val extends MeetMarkerModel>
    implements $MeetMarkerModelCopyWith<$Res> {
  _$MeetMarkerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetMarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? loadColorValue = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      loadColorValue: null == loadColorValue
          ? _value.loadColorValue
          : loadColorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetMarkerModelImplCopyWith<$Res>
    implements $MeetMarkerModelCopyWith<$Res> {
  factory _$$MeetMarkerModelImplCopyWith(_$MeetMarkerModelImpl value,
          $Res Function(_$MeetMarkerModelImpl) then) =
      __$$MeetMarkerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, int loadColorValue});
}

/// @nodoc
class __$$MeetMarkerModelImplCopyWithImpl<$Res>
    extends _$MeetMarkerModelCopyWithImpl<$Res, _$MeetMarkerModelImpl>
    implements _$$MeetMarkerModelImplCopyWith<$Res> {
  __$$MeetMarkerModelImplCopyWithImpl(
      _$MeetMarkerModelImpl _value, $Res Function(_$MeetMarkerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetMarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? loadColorValue = null,
  }) {
    return _then(_$MeetMarkerModelImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      loadColorValue: null == loadColorValue
          ? _value.loadColorValue
          : loadColorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetMarkerModelImpl implements _MeetMarkerModel {
  const _$MeetMarkerModelImpl(
      {required this.imagePath, required this.loadColorValue});

  factory _$MeetMarkerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetMarkerModelImplFromJson(json);

  @override
  final String imagePath;
  @override
  final int loadColorValue;

  @override
  String toString() {
    return 'MeetMarkerModel(imagePath: $imagePath, loadColorValue: $loadColorValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetMarkerModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.loadColorValue, loadColorValue) ||
                other.loadColorValue == loadColorValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, loadColorValue);

  /// Create a copy of MeetMarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetMarkerModelImplCopyWith<_$MeetMarkerModelImpl> get copyWith =>
      __$$MeetMarkerModelImplCopyWithImpl<_$MeetMarkerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetMarkerModelImplToJson(
      this,
    );
  }
}

abstract class _MeetMarkerModel implements MeetMarkerModel {
  const factory _MeetMarkerModel(
      {required final String imagePath,
      required final int loadColorValue}) = _$MeetMarkerModelImpl;

  factory _MeetMarkerModel.fromJson(Map<String, dynamic> json) =
      _$MeetMarkerModelImpl.fromJson;

  @override
  String get imagePath;
  @override
  int get loadColorValue;

  /// Create a copy of MeetMarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetMarkerModelImplCopyWith<_$MeetMarkerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
