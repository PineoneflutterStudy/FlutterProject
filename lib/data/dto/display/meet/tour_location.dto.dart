import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_location.dto.freezed.dart';
part 'tour_location.dto.g.dart';

/// ## 관광정보 서비스 - 위치기반 관광정보 Dto
/// * https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15101578#/
@freezed
class TourLocationDto with _$TourLocationDto {
  const factory TourLocationDto({
    required String addr1, // 주소 : 서울특별시 중구 명동길 26
    required String addr2, // 상세주소 : (명동2가)
    required String areacode, // 지역코드
    required String booktour, // 교과서 속 여행지 여부 (1=여행지, 0=해당없음)
    required String cat1, // 대분류 코드
    required String cat2, // 중분류 코드
    required String cat3, // 소분류 코드
    required String contentid, // 콘텐츠 Id
    required String contenttypeid, // 콘텐츠타입 ID : 관광타입(관광지, 숙박등) ID
    required String createdtime, // 등록일
    required String dist, // 거리 : 중심 좌표로 부터 거리 (단위:m)
    required String firstimage, // 대표이미지(원본) : 원본 대표 이미지 (약 500 * 333 size) Url 응답
    required String firstimage2, // 대표이미지(썸네일) : 썸네일 대표 이미지 (약 150 * 100 size) Url 응답
    required String cpyrhtDivCd, // 저작권 유형 : Type1:제1유형(출처표시-권장) / Type3:제3유형(제1유형 + 변경금지)
    required String mapx, // GPS X 좌표 ( 경도 )
    required String mapy, // GPS Y 좌표 ( 위도 )
    required String mlevel, // Map Level
    required String modifiedtime, // 수정일 : 콘텐츠 수정일
    required String sigungucode, // 시군구코드
    required String tel, // 전화번호
    required String title,
  }) = _TourLocationDto;


  factory TourLocationDto.fromJson(Map<String, dynamic> json) =>
      _$TourLocationDtoFromJson(json);
}