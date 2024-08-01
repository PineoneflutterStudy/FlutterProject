import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourFestivalInfo.dto.freezed.dart';

part 'tourFestivalInfo.dto.g.dart';

@freezed
class TourFestivalInfoDto with _$TourFestivalInfoDto {
  const factory TourFestivalInfoDto({
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
    required String eventstartdate, // 행사 시작일 ( 형식 : YYYYMMDD )
    required String eventenddate, // 행사 종료일 ( 형식 : YYYYMMDD )
    required String firstimage, // 대표이미지(원본) : 원본 대표 이미지 (약 500 * 333 size) Url 응답
    required String firstimage2, // 대표이미지(썸네일) : 썸네일 대표 이미지 (약 150 * 100 size) Url 응답
    required String cpyrhtDivCd, // 저작권 유형 : Type1:제1유형(출처표시-권장) / Type3:제3유형(제1유형 + 변경금지)
    required String mapx, // GPS X 좌표 ( 경도 )
    required String mapy, // GPS Y 좌표 ( 위도 )
    required String mlevel, // Map Level
    required String modifiedtime, // 수정일 : 콘텐츠 수정일
    required String sigungucode, // 시군구코드
    required String tel, // 전화번호
    required String title, // 제목 : 콘텐츠 제목
  }) = _TourFestivalInfoDto;

  factory TourFestivalInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TourFestivalInfoDtoFromJson(json);

  factory TourFestivalInfoDto.fromMap(Map<String, dynamic> json) =>
      TourFestivalInfoDto(
          addr1: json['addr1'],
          addr2: json['addr2'],
          areacode: json['areacode'],
          booktour: json['booktour'],
          cat1: json['cat1'],
          cat2: json['cat2'],
          cat3: json['cat3'],
          contentid: json['contentid'],
          contenttypeid: json['contenttypeid'],
          createdtime: json['createdtime'],
          eventstartdate: json['eventstartdate'],
          eventenddate: json['eventenddate'],
          firstimage: json['firstimage'],
          firstimage2: json['firstimage2'],
          cpyrhtDivCd: json['cpyrhtDivCd'],
          mapx: json['mapx'],
          mapy: json['mapy'],
          mlevel: json['mlevel'],
          modifiedtime: json['modifiedtime'],
          sigungucode: json['sigungucode'],
          tel: json['tel'],
          title: json['title']
      );
}
