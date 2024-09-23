// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_db.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerDbModel _$BannerDbModelFromJson(Map<String, dynamic> json) {
  return _BannerDbModel.fromJson(json);
}

/// @nodoc
mixin _$BannerDbModel {
  List<BannerContentDbModel> get contents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDbModelCopyWith<BannerDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDbModelCopyWith<$Res> {
  factory $BannerDbModelCopyWith(
          BannerDbModel value, $Res Function(BannerDbModel) then) =
      _$BannerDbModelCopyWithImpl<$Res, BannerDbModel>;
  @useResult
  $Res call({List<BannerContentDbModel> contents});
}

/// @nodoc
class _$BannerDbModelCopyWithImpl<$Res, $Val extends BannerDbModel>
    implements $BannerDbModelCopyWith<$Res> {
  _$BannerDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<BannerContentDbModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerDbModelImplCopyWith<$Res>
    implements $BannerDbModelCopyWith<$Res> {
  factory _$$BannerDbModelImplCopyWith(
          _$BannerDbModelImpl value, $Res Function(_$BannerDbModelImpl) then) =
      __$$BannerDbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerContentDbModel> contents});
}

/// @nodoc
class __$$BannerDbModelImplCopyWithImpl<$Res>
    extends _$BannerDbModelCopyWithImpl<$Res, _$BannerDbModelImpl>
    implements _$$BannerDbModelImplCopyWith<$Res> {
  __$$BannerDbModelImplCopyWithImpl(
      _$BannerDbModelImpl _value, $Res Function(_$BannerDbModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
  }) {
    return _then(_$BannerDbModelImpl(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<BannerContentDbModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerDbModelImpl
    with DiagnosticableTreeMixin
    implements _BannerDbModel {
  const _$BannerDbModelImpl(
      {final List<BannerContentDbModel> contents = const []})
      : _contents = contents;

  factory _$BannerDbModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDbModelImplFromJson(json);

  final List<BannerContentDbModel> _contents;
  @override
  @JsonKey()
  List<BannerContentDbModel> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BannerDbModel(contents: $contents)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BannerDbModel'))
      ..add(DiagnosticsProperty('contents', contents));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDbModelImpl &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDbModelImplCopyWith<_$BannerDbModelImpl> get copyWith =>
      __$$BannerDbModelImplCopyWithImpl<_$BannerDbModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDbModelImplToJson(
      this,
    );
  }
}

abstract class _BannerDbModel implements BannerDbModel {
  const factory _BannerDbModel({final List<BannerContentDbModel> contents}) =
      _$BannerDbModelImpl;

  factory _BannerDbModel.fromJson(Map<String, dynamic> json) =
      _$BannerDbModelImpl.fromJson;

  @override
  List<BannerContentDbModel> get contents;
  @override
  @JsonKey(ignore: true)
  _$$BannerDbModelImplCopyWith<_$BannerDbModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
