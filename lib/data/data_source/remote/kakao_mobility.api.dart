import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../dto/display/meet/mobility_directions.dto.dart';
import '../response_wrapper/kakao_mobility_response_wrapper.dart';

part 'kakao_mobility.api.g.dart';

/// # 카카오 모빌리티
/// * https://developers.kakaomobility.com/docs/navi-api/directions/
@RestApi()
abstract class KakaoMobilityApi {

  factory KakaoMobilityApi(Dio dio, {String baseUrl}) = _KakaoMobilityApi;

  /// # 자동차 길찾기 API
  @GET('/directions?')
  Future<KakaoMobilityResponseWrapper<MobilityDirectionsDto>> getDirectionsInfo(
      @Query('origin') String origin, // !! 필수 : 출발지 - ${X좌표},${Y좌표},name=${출발지명} 또는 ${X좌표},${Y좌표}
      @Query('destination') String destination, // !! 필수 : 목적지 - ${X좌표},${Y좌표},name=${목적지명} 또는 ${X좌표},${Y좌표}
      @Query('priority') String priority, // 경로 탐색 우선순위 옵션 - RECOMMEND: 추천 경로 / TIME: 최단 시간 / DISTANCE: 최단 경로 (기본값: RECOMMEND)
      @Query('car_fuel') String car_fuel, // 	차량 유종 정보 - GASOLINE: 휘발유 / DIESEL: 경유 / LPG: LPG (기본값: GASOLINE)
      @Query('car_hipass') bool car_hipass, // 하이패스 장착 여부 - true: 하이패스 장착 / false: 하이패스 미장착 (기본값: false)
      @Query('alternatives') bool alternatives, // 	대안 경로 제공 여부 - true: 대안 경로 제공 / false: 대안 경로 미제공 (기본값: false)
      @Query('road_details') bool road_details, // 	상세 도로 정보 제공 여부 - true: 상세 도로 정보 제공 / false: 상세 도로 정보 미제공 (기본값: false)
      );

}