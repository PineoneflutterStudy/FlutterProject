import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_detail_info.dto.freezed.dart';
part 'tour_detail_info.dto.g.dart';

@freezed
class TourDetailInfoDto with _$TourDetailInfoDto {
  const factory TourDetailInfoDto({
    required String contentid, //	콘텐츠ID
    required String contenttypeid, //	콘텐츠타입ID
    required String agelimit, //	관람가능연령
    required String bookingplace, //	예매처
    required String discountinfofestival, //	할인정보
    required String eventenddate, //	행사종료일
    required String eventhomepage, //	행사홈페이지
    required String eventplace, //	행사장소
    required String eventstartdate, //	행사시작일
    required String festivalgrade, //	축제등급
    required String placeinfo, //	행사장위치안내
    required String playtime, //	공연시간
    required String program, //	행사프로그램
    required String spendtimefestival, //	관람소요시간
    required String sponsor1, //	주최자정보
    required String sponsor1tel, //	주최자연락처
    required String sponsor2, //	주관사정보
    required String sponsor2tel, //	주관사연락처
    required String subevent, //	부대행사
    required String usetimefestival, //	이용요금
  }) = _TourDetailInfoDto;



  factory TourDetailInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TourDetailInfoDtoFromJson(json);
}