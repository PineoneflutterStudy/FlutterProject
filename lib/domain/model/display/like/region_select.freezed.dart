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
  String get first => throw _privateConstructorUsedError;
  String get second => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;
  String? get another => throw _privateConstructorUsedError;

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
  $Res call({String first, String second, String last, String? another});
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
    Object? first = null,
    Object? second = null,
    Object? last = null,
    Object? another = freezed,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      another: freezed == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String first, String second, String last, String? another});
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
    Object? first = null,
    Object? second = null,
    Object? last = null,
    Object? another = freezed,
  }) {
    return _then(_$RegionSelectModelImpl(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      another: freezed == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionSelectModelImpl implements _RegionSelectModel {
  const _$RegionSelectModelImpl(
      {required this.first,
      required this.second,
      required this.last,
      required this.another});

  factory _$RegionSelectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionSelectModelImplFromJson(json);

  @override
  final String first;
  @override
  final String second;
  @override
  final String last;
  @override
  final String? another;

  @override
  String toString() {
    return 'RegionSelectModel(first: $first, second: $second, last: $last, another: $another)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionSelectModelImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.another, another) || other.another == another));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, second, last, another);

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
      {required final String first,
      required final String second,
      required final String last,
      required final String? another}) = _$RegionSelectModelImpl;

  factory _RegionSelectModel.fromJson(Map<String, dynamic> json) =
      _$RegionSelectModelImpl.fromJson;

  @override
  String get first;
  @override
  String get second;
  @override
  String get last;
  @override
  String? get another;
  @override
  @JsonKey(ignore: true)
  _$$RegionSelectModelImplCopyWith<_$RegionSelectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
