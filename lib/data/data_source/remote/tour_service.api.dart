import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../dto/display/home/tour_festival_info.dto.dart';
import '../../dto/display/home/tour_image_info.dto.dart';
import '../../dto/display/meet/tour_location.dto.dart';
import '../response_wrapper/tour_service_response_wrapper.dart';

part 'tour_service.api.g.dart';

/// # 한국 관광 공사 - 관광 정보 서비스 API
/// * https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15101578#/
@RestApi()
abstract class TourServiceApi {

  factory TourServiceApi(Dio dio, {String baseUrl}) = _TourServiceApi;

  /// # 위치 기반 관광 정보 조회
  @GET('/locationBasedList1?')
  Future<TourServiceResponseWrapper<TourLocationDto>> getTourLocationInfo(
      @Query('serviceKey') String serviceKey, // !! 필수 인증키(서비스키)
      @Query('numOfRows') int numOfRows, // 한 페이지 결과 수
      @Query('pageNo') int pageNo, // 페이지 번호
      @Query('MobileOS') String MobileOS, // !! 필수 : OS 구분 ( IOS / AND / WIN / ETC )
      @Query('MobileApp') String MobileApp, // !! 필수 : 서비스명(어플명)
      @Query('_type') String _type, // 응답메시지 형식 : REST 방식의 URL 호출 시 json 값 추가 ( 디폴트 응답베시지 형식은 XML )
      @Query('listYN') String listYN, // 목록 구분 ( Y : 목록 / N : 개수 )
      @Query('arrange') String arrange, // 정렬구분 (A=제목순, C=수정일순, D=생성일순) 대표이미지가반드시있는정렬(O=제목순, Q=수정일순, R=생성일순)
      @Query('mapX') String mapX, // !! 필수 :  GPS X좌표(WGS84 경도좌표)
      @Query('mapY') String mapY, // !! 필수 : GPS Y좌표(WGS84 위도좌표)
      @Query('radius') String radius, // !! 필수 : 거리반경(단위:m) , Max값 20000m=20Km
      @Query('contentTypeId') String contentTypeId, // 관광타입(12:관광지, 14:문화시설, 15:축제공연행사, 25:여행코스, 28:레포츠, 32:숙박, 38:쇼핑, 39:음식점) ID
      @Query('modifiedtime') String modifiedtime, // 수정일(형식 :YYYYMMDD)// 제목 : 콘텐츠 제목
      );

  /// # 이미지 정보 조회
  @GET('/detailImage1?')
  Future<TourServiceResponseWrapper<TourImageInfoDto>> getTourImageInfo(
      @Query('serviceKey') String serviceKey, // !! 필수 인증키(서비스키)
      @Query('numOfRows') int numOfRows, // 한 페이지 결과 수
      @Query('pageNo') int pageNo, // 페이지 번호
      @Query('MobileOS') String MobileOS, // !! 필수 : OS 구분 ( IOS / AND / WIN / ETC )
      @Query('MobileApp') String MobileApp, // !! 필수 : 서비스명(어플명)
      @Query('_type') String _type, // 응답메시지 형식 : REST 방식의 URL 호출 시 json 값 추가 ( 디폴트 응답베시지 형식은 XML )
      @Query('contentId') String contentId, // !! 필수 : 콘텐츠 ID
      @Query('imageYN') String imageYN, // 이미지조회1 : Y=콘텐츠이미지조회 N=”음식점”타입의음식메뉴이미지
      @Query('subImageYN') String subImageYN, // 이미지조회2 : Y=원본,썸네일이미지조회,공공누리 저작권유형정보조회 N=Null
  );

  /// # 행사 정보 조회
  @GET('/searchFestival1?')
  Future<TourServiceResponseWrapper<TourFestivalInfoDto>> getTourFestivalInfo(
      @Query('serviceKey') String serviceKey, // !! 필수 인증키(서비스키)
      @Query('numOfRows') int numOfRows, // 한 페이지 결과 수
      @Query('pageNo') int pageNo, // 페이지 번호
      @Query('MobileOS') String MobileOS, // !! 필수 : OS 구분 ( IOS / AND / WIN / ETC )
      @Query('MobileApp') String MobileApp, // !! 필수 : 서비스명(어플명)
      @Query('_type') String _type, // 응답메시지 형식 : REST 방식의 URL 호출 시 json 값 추가 ( 디폴트 응답베시지 형식은 XML )
      @Query('listYN') String listYN, // 목록 구분 ( Y : 목록 / N : 개수 )
      @Query('arrange') String arrange, // 정렬구분 (A=제목순, C=수정일순, D=생성일순) 대표이미지가반드시있는정렬(O=제목순, Q=수정일순, R=생성일순)
      @Query('eventStartDate') String eventStartDate, // !! 필수 : 행사시작일(형식 :YYYYMMDD)
 );

}