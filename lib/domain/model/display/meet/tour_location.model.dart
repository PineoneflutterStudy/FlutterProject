import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_location.model.freezed.dart';
part 'tour_location.model.g.dart';

/// ## 관광정보 서비스 - 위치기반 관광정보 조회 Model
@freezed
class TourLocationModel with _$TourLocationModel {
  const factory TourLocationModel({
    required String addr1, // 주소 : 서울특별시 중구 명동길 26
    required String addr2, // 상세주소 : (명동2가)
    required String areacode, // 지역코드
    required String createdtime, // 등록일
    required String mapx, // GPS X 좌표 ( 경도 )
    required String mapy, // GPS Y 좌표 ( 위도 )
    required String mlevel, // Map Level
    required String sigungucode, // 시군구코드
    required String tel, // 전화번호
    required String title, // 제목 ( 콘텐츠 제목 )
  }) = _TourLocationModel;



  factory TourLocationModel.fromJson(Map<String, dynamic> json) =>
      _$TourLocationModelFromJson(json);
}