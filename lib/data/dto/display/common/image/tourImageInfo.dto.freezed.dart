// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tourImageInfo.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TourImageInfoDto _$TourImageInfoDtoFromJson(Map<String, dynamic> json) {
  return _TourImageInfoDto.fromJson(json);
}

/// @nodoc
mixin _$TourImageInfoDto {
  String get contentid => throw _privateConstructorUsedError; // 콘텐츠 ID
  String get imgname => throw _privateConstructorUsedError; // 이미지명
  String get originimgurl =>
      throw _privateConstructorUsedError; // 원본이미지 ( 약 500*333 Size )
  String get serialnum => throw _privateConstructorUsedError; // 이미지 일련번호
  String get cpyrhtDivCd =>
      throw _privateConstructorUsedError; // 저작권 유형 ( Type1:제1유형(출처표시-권장), Type3:제3유형(제1유형+변경금지) )
  String get smallimageurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourImageInfoDtoCopyWith<TourImageInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourImageInfoDtoCopyWith<$Res> {
  factory $TourImageInfoDtoCopyWith(
          TourImageInfoDto value, $Res Function(TourImageInfoDto) then) =
      _$TourImageInfoDtoCopyWithImpl<$Res, TourImageInfoDto>;
  @useResult
  $Res call(
      {String contentid,
      String imgname,
      String originimgurl,
      String serialnum,
      String cpyrhtDivCd,
      String smallimageurl});
}

/// @nodoc
class _$TourImageInfoDtoCopyWithImpl<$Res, $Val extends TourImageInfoDto>
    implements $TourImageInfoDtoCopyWith<$Res> {
  _$TourImageInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentid = null,
    Object? imgname = null,
    Object? originimgurl = null,
    Object? serialnum = null,
    Object? cpyrhtDivCd = null,
    Object? smallimageurl = null,
  }) {
    return _then(_value.copyWith(
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      imgname: null == imgname
          ? _value.imgname
          : imgname // ignore: cast_nullable_to_non_nullable
              as String,
      originimgurl: null == originimgurl
          ? _value.originimgurl
          : originimgurl // ignore: cast_nullable_to_non_nullable
              as String,
      serialnum: null == serialnum
          ? _value.serialnum
          : serialnum // ignore: cast_nullable_to_non_nullable
              as String,
      cpyrhtDivCd: null == cpyrhtDivCd
          ? _value.cpyrhtDivCd
          : cpyrhtDivCd // ignore: cast_nullable_to_non_nullable
              as String,
      smallimageurl: null == smallimageurl
          ? _value.smallimageurl
          : smallimageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourImageInfoDtoImplCopyWith<$Res>
    implements $TourImageInfoDtoCopyWith<$Res> {
  factory _$$TourImageInfoDtoImplCopyWith(_$TourImageInfoDtoImpl value,
          $Res Function(_$TourImageInfoDtoImpl) then) =
      __$$TourImageInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentid,
      String imgname,
      String originimgurl,
      String serialnum,
      String cpyrhtDivCd,
      String smallimageurl});
}

/// @nodoc
class __$$TourImageInfoDtoImplCopyWithImpl<$Res>
    extends _$TourImageInfoDtoCopyWithImpl<$Res, _$TourImageInfoDtoImpl>
    implements _$$TourImageInfoDtoImplCopyWith<$Res> {
  __$$TourImageInfoDtoImplCopyWithImpl(_$TourImageInfoDtoImpl _value,
      $Res Function(_$TourImageInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentid = null,
    Object? imgname = null,
    Object? originimgurl = null,
    Object? serialnum = null,
    Object? cpyrhtDivCd = null,
    Object? smallimageurl = null,
  }) {
    return _then(_$TourImageInfoDtoImpl(
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      imgname: null == imgname
          ? _value.imgname
          : imgname // ignore: cast_nullable_to_non_nullable
              as String,
      originimgurl: null == originimgurl
          ? _value.originimgurl
          : originimgurl // ignore: cast_nullable_to_non_nullable
              as String,
      serialnum: null == serialnum
          ? _value.serialnum
          : serialnum // ignore: cast_nullable_to_non_nullable
              as String,
      cpyrhtDivCd: null == cpyrhtDivCd
          ? _value.cpyrhtDivCd
          : cpyrhtDivCd // ignore: cast_nullable_to_non_nullable
              as String,
      smallimageurl: null == smallimageurl
          ? _value.smallimageurl
          : smallimageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourImageInfoDtoImpl implements _TourImageInfoDto {
  const _$TourImageInfoDtoImpl(
      {required this.contentid,
      required this.imgname,
      required this.originimgurl,
      required this.serialnum,
      required this.cpyrhtDivCd,
      required this.smallimageurl});

  factory _$TourImageInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImageInfoDtoImplFromJson(json);

  @override
  final String contentid;
// 콘텐츠 ID
  @override
  final String imgname;
// 이미지명
  @override
  final String originimgurl;
// 원본이미지 ( 약 500*333 Size )
  @override
  final String serialnum;
// 이미지 일련번호
  @override
  final String cpyrhtDivCd;
// 저작권 유형 ( Type1:제1유형(출처표시-권장), Type3:제3유형(제1유형+변경금지) )
  @override
  final String smallimageurl;

  @override
  String toString() {
    return 'TourImageInfoDto(contentid: $contentid, imgname: $imgname, originimgurl: $originimgurl, serialnum: $serialnum, cpyrhtDivCd: $cpyrhtDivCd, smallimageurl: $smallimageurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImageInfoDtoImpl &&
            (identical(other.contentid, contentid) ||
                other.contentid == contentid) &&
            (identical(other.imgname, imgname) || other.imgname == imgname) &&
            (identical(other.originimgurl, originimgurl) ||
                other.originimgurl == originimgurl) &&
            (identical(other.serialnum, serialnum) ||
                other.serialnum == serialnum) &&
            (identical(other.cpyrhtDivCd, cpyrhtDivCd) ||
                other.cpyrhtDivCd == cpyrhtDivCd) &&
            (identical(other.smallimageurl, smallimageurl) ||
                other.smallimageurl == smallimageurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contentid, imgname, originimgurl,
      serialnum, cpyrhtDivCd, smallimageurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourImageInfoDtoImplCopyWith<_$TourImageInfoDtoImpl> get copyWith =>
      __$$TourImageInfoDtoImplCopyWithImpl<_$TourImageInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourImageInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _TourImageInfoDto implements TourImageInfoDto {
  const factory _TourImageInfoDto(
      {required final String contentid,
      required final String imgname,
      required final String originimgurl,
      required final String serialnum,
      required final String cpyrhtDivCd,
      required final String smallimageurl}) = _$TourImageInfoDtoImpl;

  factory _TourImageInfoDto.fromJson(Map<String, dynamic> json) =
      _$TourImageInfoDtoImpl.fromJson;

  @override
  String get contentid;
  @override // 콘텐츠 ID
  String get imgname;
  @override // 이미지명
  String get originimgurl;
  @override // 원본이미지 ( 약 500*333 Size )
  String get serialnum;
  @override // 이미지 일련번호
  String get cpyrhtDivCd;
  @override // 저작권 유형 ( Type1:제1유형(출처표시-권장), Type3:제3유형(제1유형+변경금지) )
  String get smallimageurl;
  @override
  @JsonKey(ignore: true)
  _$$TourImageInfoDtoImplCopyWith<_$TourImageInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
