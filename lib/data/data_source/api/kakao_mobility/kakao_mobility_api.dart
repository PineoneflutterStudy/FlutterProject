import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/logger.dart';
import '../../../dto/display/meet/mobility.dto.dart';

final Logger _logger = CustomLogger.logger;

final baseMobilityUrl = 'https://apis-navi.kakaomobility.com/v1/directions?';

abstract class KakaoMobilityApi {
  /// # 카카오 모빌리티 - 자동차 길찾기
  Future<MobilityDto> loadGetDirections(String startLongitude, String startLatitude, String endLongitude, String endLatitude);
}

/// # 카카오 모빌리티 Api
/// ## 앱 내 사용 api 목록
/// * 1. 자동차 길찾기
class KakaoMobilityApiImpl implements KakaoMobilityApi {

  final dio = Dio();

  @override
  Future<MobilityDto> loadGetDirections(String startLongitude, String startLatitude, String endLongitude, String endLatitude) async {
    try {
      late List<MobilityDto> dto;
      FlutterConfig.loadEnvVariables();
      String apiKey = FlutterConfig.get('KAKAO_REST_API_KEY');

      // Request
      dio.options = BaseOptions(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "KakaoAK $apiKey",
        }
      );

      final Response<Map<String, dynamic>> response = await dio
          .get(
        baseMobilityUrl,
          queryParameters: {
            'origin' : '${startLongitude},${startLatitude}',
            'destination' : '${endLongitude},${endLatitude}',
            'priority' : 'RECOMMEND',
            'car_fuel' : 'GASOLINE',
            'car_hipass' : 'false',
            'alternatives' : 'false',
            'road_details' : 'false',
          },
      );

      _logger.i('길찾기값 확인 -> ${response}');

      // 응답코드 : 0 ( 길찾기 완료 ) / https://developers.kakaomobility.com/docs/navi-api/reference/ - 경로 탐색 결과 코드 참고
      final resultCode = response.data?['routes'][0]['result_code'];

      if (resultCode == 0) {
        final distance = response.data?['routes'][0]['summary']['distance']; // 전체 검색 결과 거리 ( 미터 )
        final duration = response.data?['routes'][0]['summary']['duration']; // 목적지까지 소요 시간 ( 초 )
        final routeRoads = response.data?['routes'][0]['sections'][0]['roads'] as List;

        final longitudePath = []; // 경로 경도 List
        final latitudePath = []; // 경로 위도 List

        for (dynamic index in routeRoads) {
          final adb = index['vertexes'] as List;
          for (int i = 0; i < adb.length; i++) {
            if (i % 2 == 0) {
              longitudePath.add(adb[i]); //  전체 루트의 경도 저장 -> 짝수만 사용 예정
            } else {
              latitudePath.add(adb[i]); // 전체 루트의 위도 저장 -> 짝수만 사용 예정
            }
          }
        }

        final longitudeJson = jsonEncode(longitudePath);
        final latitudeJson = jsonEncode(latitudePath);

        return MobilityDto(distance: distance, duration: duration, longitudePaths: longitudeJson, latitudePaths: latitudeJson);
      }
      else {
        return MobilityDto(distance: 0, duration: 0, longitudePaths: '', latitudePaths: '');
      }

    } on DioException catch (e) {
      _logger.e(e);
      return MobilityDto(distance: 0, duration: 0, longitudePaths: '', latitudePaths: '');
    } on Exception catch (e) {
      _logger.e(e);
      return MobilityDto(distance: 0, duration: 0, longitudePaths: '', latitudePaths: '');
    }
  }
}