// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_content_db.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerContentDbModel _$BannerContentDbModelFromJson(Map<String, dynamic> json) {
  return _BannerContentDbModel.fromJson(json);
}

/// @nodoc
mixin _$BannerContentDbModel {
  String get entryLocation => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerContentDbModelCopyWith<BannerContentDbModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerContentDbModelCopyWith<$Res> {
  factory $BannerContentDbModelCopyWith(BannerContentDbModel value,
          $Res Function(BannerContentDbModel) then) =
      _$BannerContentDbModelCopyWithImpl<$Res, BannerContentDbModel>;
  @useResult
  $Res call({String entryLocation, String imageUrl, String type});
}

/// @nodoc
class _$BannerContentDbModelCopyWithImpl<$Res,
        $Val extends BannerContentDbModel>
    implements $BannerContentDbModelCopyWith<$Res> {
  _$BannerContentDbModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryLocation = null,
    Object? imageUrl = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      entryLocation: null == entryLocation
          ? _value.entryLocation
          : entryLocation // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerContentDbModelImplCopyWith<$Res>
    implements $BannerContentDbModelCopyWith<$Res> {
  factory _$$BannerContentDbModelImplCopyWith(_$BannerContentDbModelImpl value,
          $Res Function(_$BannerContentDbModelImpl) then) =
      __$$BannerContentDbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String entryLocation, String imageUrl, String type});
}

/// @nodoc
class __$$BannerContentDbModelImplCopyWithImpl<$Res>
    extends _$BannerContentDbModelCopyWithImpl<$Res, _$BannerContentDbModelImpl>
    implements _$$BannerContentDbModelImplCopyWith<$Res> {
  __$$BannerContentDbModelImplCopyWithImpl(_$BannerContentDbModelImpl _value,
      $Res Function(_$BannerContentDbModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryLocation = null,
    Object? imageUrl = null,
    Object? type = null,
  }) {
    return _then(_$BannerContentDbModelImpl(
      entryLocation: null == entryLocation
          ? _value.entryLocation
          : entryLocation // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerContentDbModelImpl
    with DiagnosticableTreeMixin
    implements _BannerContentDbModel {
  const _$BannerContentDbModelImpl(
      {required this.entryLocation,
      required this.imageUrl,
      required this.type});

  factory _$BannerContentDbModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerContentDbModelImplFromJson(json);

  @override
  final String entryLocation;
  @override
  final String imageUrl;
  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BannerContentDbModel(entryLocation: $entryLocation, imageUrl: $imageUrl, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BannerContentDbModel'))
      ..add(DiagnosticsProperty('entryLocation', entryLocation))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerContentDbModelImpl &&
            (identical(other.entryLocation, entryLocation) ||
                other.entryLocation == entryLocation) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, entryLocation, imageUrl, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerContentDbModelImplCopyWith<_$BannerContentDbModelImpl>
      get copyWith =>
          __$$BannerContentDbModelImplCopyWithImpl<_$BannerContentDbModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerContentDbModelImplToJson(
      this,
    );
  }
}

abstract class _BannerContentDbModel implements BannerContentDbModel {
  const factory _BannerContentDbModel(
      {required final String entryLocation,
      required final String imageUrl,
      required final String type}) = _$BannerContentDbModelImpl;

  factory _BannerContentDbModel.fromJson(Map<String, dynamic> json) =
      _$BannerContentDbModelImpl.fromJson;

  @override
  String get entryLocation;
  @override
  String get imageUrl;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$BannerContentDbModelImplCopyWith<_$BannerContentDbModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
