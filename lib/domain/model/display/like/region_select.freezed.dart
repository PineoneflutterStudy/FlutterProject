// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_select.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionSelectModel _$RegionSelectModelFromJson(Map<String, dynamic> json) {
  return _RegionSelectModel.fromJson(json);
}

/// @nodoc
mixin _$RegionSelectModel {
  String get major => throw _privateConstructorUsedError;
  String get middle => throw _privateConstructorUsedError;
  String get minor => throw _privateConstructorUsedError;
  int get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionSelectModelCopyWith<RegionSelectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionSelectModelCopyWith<$Res> {
  factory $RegionSelectModelCopyWith(
          RegionSelectModel value, $Res Function(RegionSelectModel) then) =
      _$RegionSelectModelCopyWithImpl<$Res, RegionSelectModel>;
  @useResult
  $Res call({String major, String middle, String minor, int current});
}

/// @nodoc
class _$RegionSelectModelCopyWithImpl<$Res, $Val extends RegionSelectModel>
    implements $RegionSelectModelCopyWith<$Res> {
  _$RegionSelectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? middle = null,
    Object? minor = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      middle: null == middle
          ? _value.middle
          : middle // ignore: cast_nullable_to_non_nullable
              as String,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionSelectModelImplCopyWith<$Res>
    implements $RegionSelectModelCopyWith<$Res> {
  factory _$$RegionSelectModelImplCopyWith(_$RegionSelectModelImpl value,
          $Res Function(_$RegionSelectModelImpl) then) =
      __$$RegionSelectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String major, String middle, String minor, int current});
}

/// @nodoc
class __$$RegionSelectModelImplCopyWithImpl<$Res>
    extends _$RegionSelectModelCopyWithImpl<$Res, _$RegionSelectModelImpl>
    implements _$$RegionSelectModelImplCopyWith<$Res> {
  __$$RegionSelectModelImplCopyWithImpl(_$RegionSelectModelImpl _value,
      $Res Function(_$RegionSelectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? middle = null,
    Object? minor = null,
    Object? current = null,
  }) {
    return _then(_$RegionSelectModelImpl(
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      middle: null == middle
          ? _value.middle
          : middle // ignore: cast_nullable_to_non_nullable
              as String,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionSelectModelImpl implements _RegionSelectModel {
  const _$RegionSelectModelImpl(
      {required this.major,
      required this.middle,
      required this.minor,
      required this.current});

  factory _$RegionSelectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionSelectModelImplFromJson(json);

  @override
  final String major;
  @override
  final String middle;
  @override
  final String minor;
  @override
  final int current;

  @override
  String toString() {
    return 'RegionSelectModel(major: $major, middle: $middle, minor: $minor, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionSelectModelImpl &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.middle, middle) || other.middle == middle) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, major, middle, minor, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionSelectModelImplCopyWith<_$RegionSelectModelImpl> get copyWith =>
      __$$RegionSelectModelImplCopyWithImpl<_$RegionSelectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionSelectModelImplToJson(
      this,
    );
  }
}

abstract class _RegionSelectModel implements RegionSelectModel {
  const factory _RegionSelectModel(
      {required final String major,
      required final String middle,
      required final String minor,
      required final int current}) = _$RegionSelectModelImpl;

  factory _RegionSelectModel.fromJson(Map<String, dynamic> json) =
      _$RegionSelectModelImpl.fromJson;

  @override
  String get major;
  @override
  String get middle;
  @override
  String get minor;
  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$RegionSelectModelImplCopyWith<_$RegionSelectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
