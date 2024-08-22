// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_location.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TourLocationDto _$TourLocationDtoFromJson(Map<String, dynamic> json) {
  return _TourLocationDto.fromJson(json);
}

/// @nodoc
mixin _$TourLocationDto {
  String get addr1 =>
      throw _privateConstructorUsedError; // 주소 : 서울특별시 중구 명동길 26
  String get addr2 => throw _privateConstructorUsedError; // 상세주소 : (명동2가)
  String get areacode => throw _privateConstructorUsedError; // 지역코드
  String get booktour =>
      throw _privateConstructorUsedError; // 교과서 속 여행지 여부 (1=여행지, 0=해당없음)
  String get cat1 => throw _privateConstructorUsedError; // 대분류 코드
  String get cat2 => throw _privateConstructorUsedError; // 중분류 코드
  String get cat3 => throw _privateConstructorUsedError; // 소분류 코드
  String get contentid => throw _privateConstructorUsedError; // 콘텐츠 Id
  String get contenttypeid =>
      throw _privateConstructorUsedError; // 콘텐츠타입 ID : 관광타입(관광지, 숙박등) ID
  String get createdtime => throw _privateConstructorUsedError; // 등록일
  String get dist =>
      throw _privateConstructorUsedError; // 거리 : 중심 좌표로 부터 거리 (단위:m)
  String get firstimage =>
      throw _privateConstructorUsedError; // 대표이미지(원본) : 원본 대표 이미지 (약 500 * 333 size) Url 응답
  String get firstimage2 =>
      throw _privateConstructorUsedError; // 대표이미지(썸네일) : 썸네일 대표 이미지 (약 150 * 100 size) Url 응답
  String get cpyrhtDivCd =>
      throw _privateConstructorUsedError; // 저작권 유형 : Type1:제1유형(출처표시-권장) / Type3:제3유형(제1유형 + 변경금지)
  String get mapx => throw _privateConstructorUsedError; // GPS X 좌표 ( 경도 )
  String get mapy => throw _privateConstructorUsedError; // GPS Y 좌표 ( 위도 )
  String get mlevel => throw _privateConstructorUsedError; // Map Level
  String get modifiedtime =>
      throw _privateConstructorUsedError; // 수정일 : 콘텐츠 수정일
  String get sigungucode => throw _privateConstructorUsedError; // 시군구코드
  String get tel => throw _privateConstructorUsedError; // 전화번호
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourLocationDtoCopyWith<TourLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourLocationDtoCopyWith<$Res> {
  factory $TourLocationDtoCopyWith(
          TourLocationDto value, $Res Function(TourLocationDto) then) =
      _$TourLocationDtoCopyWithImpl<$Res, TourLocationDto>;
  @useResult
  $Res call(
      {String addr1,
      String addr2,
      String areacode,
      String booktour,
      String cat1,
      String cat2,
      String cat3,
      String contentid,
      String contenttypeid,
      String createdtime,
      String dist,
      String firstimage,
      String firstimage2,
      String cpyrhtDivCd,
      String mapx,
      String mapy,
      String mlevel,
      String modifiedtime,
      String sigungucode,
      String tel,
      String title});
}

/// @nodoc
class _$TourLocationDtoCopyWithImpl<$Res, $Val extends TourLocationDto>
    implements $TourLocationDtoCopyWith<$Res> {
  _$TourLocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr1 = null,
    Object? addr2 = null,
    Object? areacode = null,
    Object? booktour = null,
    Object? cat1 = null,
    Object? cat2 = null,
    Object? cat3 = null,
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? createdtime = null,
    Object? dist = null,
    Object? firstimage = null,
    Object? firstimage2 = null,
    Object? cpyrhtDivCd = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? mlevel = null,
    Object? modifiedtime = null,
    Object? sigungucode = null,
    Object? tel = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: null == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String,
      areacode: null == areacode
          ? _value.areacode
          : areacode // ignore: cast_nullable_to_non_nullable
              as String,
      booktour: null == booktour
          ? _value.booktour
          : booktour // ignore: cast_nullable_to_non_nullable
              as String,
      cat1: null == cat1
          ? _value.cat1
          : cat1 // ignore: cast_nullable_to_non_nullable
              as String,
      cat2: null == cat2
          ? _value.cat2
          : cat2 // ignore: cast_nullable_to_non_nullable
              as String,
      cat3: null == cat3
          ? _value.cat3
          : cat3 // ignore: cast_nullable_to_non_nullable
              as String,
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      createdtime: null == createdtime
          ? _value.createdtime
          : createdtime // ignore: cast_nullable_to_non_nullable
              as String,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: null == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage2: null == firstimage2
          ? _value.firstimage2
          : firstimage2 // ignore: cast_nullable_to_non_nullable
              as String,
      cpyrhtDivCd: null == cpyrhtDivCd
          ? _value.cpyrhtDivCd
          : cpyrhtDivCd // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
      mlevel: null == mlevel
          ? _value.mlevel
          : mlevel // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedtime: null == modifiedtime
          ? _value.modifiedtime
          : modifiedtime // ignore: cast_nullable_to_non_nullable
              as String,
      sigungucode: null == sigungucode
          ? _value.sigungucode
          : sigungucode // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourLocationDtoImplCopyWith<$Res>
    implements $TourLocationDtoCopyWith<$Res> {
  factory _$$TourLocationDtoImplCopyWith(_$TourLocationDtoImpl value,
          $Res Function(_$TourLocationDtoImpl) then) =
      __$$TourLocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addr1,
      String addr2,
      String areacode,
      String booktour,
      String cat1,
      String cat2,
      String cat3,
      String contentid,
      String contenttypeid,
      String createdtime,
      String dist,
      String firstimage,
      String firstimage2,
      String cpyrhtDivCd,
      String mapx,
      String mapy,
      String mlevel,
      String modifiedtime,
      String sigungucode,
      String tel,
      String title});
}

/// @nodoc
class __$$TourLocationDtoImplCopyWithImpl<$Res>
    extends _$TourLocationDtoCopyWithImpl<$Res, _$TourLocationDtoImpl>
    implements _$$TourLocationDtoImplCopyWith<$Res> {
  __$$TourLocationDtoImplCopyWithImpl(
      _$TourLocationDtoImpl _value, $Res Function(_$TourLocationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr1 = null,
    Object? addr2 = null,
    Object? areacode = null,
    Object? booktour = null,
    Object? cat1 = null,
    Object? cat2 = null,
    Object? cat3 = null,
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? createdtime = null,
    Object? dist = null,
    Object? firstimage = null,
    Object? firstimage2 = null,
    Object? cpyrhtDivCd = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? mlevel = null,
    Object? modifiedtime = null,
    Object? sigungucode = null,
    Object? tel = null,
    Object? title = null,
  }) {
    return _then(_$TourLocationDtoImpl(
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: null == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String,
      areacode: null == areacode
          ? _value.areacode
          : areacode // ignore: cast_nullable_to_non_nullable
              as String,
      booktour: null == booktour
          ? _value.booktour
          : booktour // ignore: cast_nullable_to_non_nullable
              as String,
      cat1: null == cat1
          ? _value.cat1
          : cat1 // ignore: cast_nullable_to_non_nullable
              as String,
      cat2: null == cat2
          ? _value.cat2
          : cat2 // ignore: cast_nullable_to_non_nullable
              as String,
      cat3: null == cat3
          ? _value.cat3
          : cat3 // ignore: cast_nullable_to_non_nullable
              as String,
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      createdtime: null == createdtime
          ? _value.createdtime
          : createdtime // ignore: cast_nullable_to_non_nullable
              as String,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: null == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage2: null == firstimage2
          ? _value.firstimage2
          : firstimage2 // ignore: cast_nullable_to_non_nullable
              as String,
      cpyrhtDivCd: null == cpyrhtDivCd
          ? _value.cpyrhtDivCd
          : cpyrhtDivCd // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
      mlevel: null == mlevel
          ? _value.mlevel
          : mlevel // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedtime: null == modifiedtime
          ? _value.modifiedtime
          : modifiedtime // ignore: cast_nullable_to_non_nullable
              as String,
      sigungucode: null == sigungucode
          ? _value.sigungucode
          : sigungucode // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourLocationDtoImpl implements _TourLocationDto {
  const _$TourLocationDtoImpl(
      {required this.addr1,
      required this.addr2,
      required this.areacode,
      required this.booktour,
      required this.cat1,
      required this.cat2,
      required this.cat3,
      required this.contentid,
      required this.contenttypeid,
      required this.createdtime,
      required this.dist,
      required this.firstimage,
      required this.firstimage2,
      required this.cpyrhtDivCd,
      required this.mapx,
      required this.mapy,
      required this.mlevel,
      required this.modifiedtime,
      required this.sigungucode,
      required this.tel,
      required this.title});

  factory _$TourLocationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourLocationDtoImplFromJson(json);

  @override
  final String addr1;
// 주소 : 서울특별시 중구 명동길 26
  @override
  final String addr2;
// 상세주소 : (명동2가)
  @override
  final String areacode;
// 지역코드
  @override
  final String booktour;
// 교과서 속 여행지 여부 (1=여행지, 0=해당없음)
  @override
  final String cat1;
// 대분류 코드
  @override
  final String cat2;
// 중분류 코드
  @override
  final String cat3;
// 소분류 코드
  @override
  final String contentid;
// 콘텐츠 Id
  @override
  final String contenttypeid;
// 콘텐츠타입 ID : 관광타입(관광지, 숙박등) ID
  @override
  final String createdtime;
// 등록일
  @override
  final String dist;
// 거리 : 중심 좌표로 부터 거리 (단위:m)
  @override
  final String firstimage;
// 대표이미지(원본) : 원본 대표 이미지 (약 500 * 333 size) Url 응답
  @override
  final String firstimage2;
// 대표이미지(썸네일) : 썸네일 대표 이미지 (약 150 * 100 size) Url 응답
  @override
  final String cpyrhtDivCd;
// 저작권 유형 : Type1:제1유형(출처표시-권장) / Type3:제3유형(제1유형 + 변경금지)
  @override
  final String mapx;
// GPS X 좌표 ( 경도 )
  @override
  final String mapy;
// GPS Y 좌표 ( 위도 )
  @override
  final String mlevel;
// Map Level
  @override
  final String modifiedtime;
// 수정일 : 콘텐츠 수정일
  @override
  final String sigungucode;
// 시군구코드
  @override
  final String tel;
// 전화번호
  @override
  final String title;

  @override
  String toString() {
    return 'TourLocationDto(addr1: $addr1, addr2: $addr2, areacode: $areacode, booktour: $booktour, cat1: $cat1, cat2: $cat2, cat3: $cat3, contentid: $contentid, contenttypeid: $contenttypeid, createdtime: $createdtime, dist: $dist, firstimage: $firstimage, firstimage2: $firstimage2, cpyrhtDivCd: $cpyrhtDivCd, mapx: $mapx, mapy: $mapy, mlevel: $mlevel, modifiedtime: $modifiedtime, sigungucode: $sigungucode, tel: $tel, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourLocationDtoImpl &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.addr2, addr2) || other.addr2 == addr2) &&
            (identical(other.areacode, areacode) ||
                other.areacode == areacode) &&
            (identical(other.booktour, booktour) ||
                other.booktour == booktour) &&
            (identical(other.cat1, cat1) || other.cat1 == cat1) &&
            (identical(other.cat2, cat2) || other.cat2 == cat2) &&
            (identical(other.cat3, cat3) || other.cat3 == cat3) &&
            (identical(other.contentid, contentid) ||
                other.contentid == contentid) &&
            (identical(other.contenttypeid, contenttypeid) ||
                other.contenttypeid == contenttypeid) &&
            (identical(other.createdtime, createdtime) ||
                other.createdtime == createdtime) &&
            (identical(other.dist, dist) || other.dist == dist) &&
            (identical(other.firstimage, firstimage) ||
                other.firstimage == firstimage) &&
            (identical(other.firstimage2, firstimage2) ||
                other.firstimage2 == firstimage2) &&
            (identical(other.cpyrhtDivCd, cpyrhtDivCd) ||
                other.cpyrhtDivCd == cpyrhtDivCd) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy) &&
            (identical(other.mlevel, mlevel) || other.mlevel == mlevel) &&
            (identical(other.modifiedtime, modifiedtime) ||
                other.modifiedtime == modifiedtime) &&
            (identical(other.sigungucode, sigungucode) ||
                other.sigungucode == sigungucode) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        addr1,
        addr2,
        areacode,
        booktour,
        cat1,
        cat2,
        cat3,
        contentid,
        contenttypeid,
        createdtime,
        dist,
        firstimage,
        firstimage2,
        cpyrhtDivCd,
        mapx,
        mapy,
        mlevel,
        modifiedtime,
        sigungucode,
        tel,
        title
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourLocationDtoImplCopyWith<_$TourLocationDtoImpl> get copyWith =>
      __$$TourLocationDtoImplCopyWithImpl<_$TourLocationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourLocationDtoImplToJson(
      this,
    );
  }
}

abstract class _TourLocationDto implements TourLocationDto {
  const factory _TourLocationDto(
      {required final String addr1,
      required final String addr2,
      required final String areacode,
      required final String booktour,
      required final String cat1,
      required final String cat2,
      required final String cat3,
      required final String contentid,
      required final String contenttypeid,
      required final String createdtime,
      required final String dist,
      required final String firstimage,
      required final String firstimage2,
      required final String cpyrhtDivCd,
      required final String mapx,
      required final String mapy,
      required final String mlevel,
      required final String modifiedtime,
      required final String sigungucode,
      required final String tel,
      required final String title}) = _$TourLocationDtoImpl;

  factory _TourLocationDto.fromJson(Map<String, dynamic> json) =
      _$TourLocationDtoImpl.fromJson;

  @override
  String get addr1;
  @override // 주소 : 서울특별시 중구 명동길 26
  String get addr2;
  @override // 상세주소 : (명동2가)
  String get areacode;
  @override // 지역코드
  String get booktour;
  @override // 교과서 속 여행지 여부 (1=여행지, 0=해당없음)
  String get cat1;
  @override // 대분류 코드
  String get cat2;
  @override // 중분류 코드
  String get cat3;
  @override // 소분류 코드
  String get contentid;
  @override // 콘텐츠 Id
  String get contenttypeid;
  @override // 콘텐츠타입 ID : 관광타입(관광지, 숙박등) ID
  String get createdtime;
  @override // 등록일
  String get dist;
  @override // 거리 : 중심 좌표로 부터 거리 (단위:m)
  String get firstimage;
  @override // 대표이미지(원본) : 원본 대표 이미지 (약 500 * 333 size) Url 응답
  String get firstimage2;
  @override // 대표이미지(썸네일) : 썸네일 대표 이미지 (약 150 * 100 size) Url 응답
  String get cpyrhtDivCd;
  @override // 저작권 유형 : Type1:제1유형(출처표시-권장) / Type3:제3유형(제1유형 + 변경금지)
  String get mapx;
  @override // GPS X 좌표 ( 경도 )
  String get mapy;
  @override // GPS Y 좌표 ( 위도 )
  String get mlevel;
  @override // Map Level
  String get modifiedtime;
  @override // 수정일 : 콘텐츠 수정일
  String get sigungucode;
  @override // 시군구코드
  String get tel;
  @override // 전화번호
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TourLocationDtoImplCopyWith<_$TourLocationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
