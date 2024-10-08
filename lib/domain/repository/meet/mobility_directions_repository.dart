import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/logger.dart';
import '../../../data/data_source/remote/kakao_mobility.api.dart';
import '../../../data/data_source/response_wrapper/response_wrapper.dart';
import '../../../data/mapper/mobility_direcionts.mapper.dart';
import '../../model/display/meet/mobility_directions.model.dart';
import '../repository.dart';

part 'mobility_directions_repository.g.dart';

final Logger _logger = CustomLogger.logger;

/// ## Kakao Mobility 자동차 길찾기 Repository

@riverpod
MobilityDirectionsRepository mobilityDirectionsRepository(
    MobilityDirectionsRepositoryRef ref) {
  return MobilityDirectionsRepositoryImpl();
}

abstract class MobilityDirectionsRepository extends Repository {
  Future<ResponseWrapper<List<MobilityDirectionsModel>>> getDirectionsInfo({
    required String startLongitude,
    required String startLatitude,
    required String endLongitude,
    required String endLatitude,
    required String priority, // !! 고정값 : RECOMMEND
    required String car_fuel, // !! 고정값 : GASOLINE
    required bool car_hipass, // !! 고정값 : false
    required bool alternatives, // !! 고정값 : false
    required bool road_details, // !! 고정값 : false
  });
}

class MobilityDirectionsRepositoryImpl extends MobilityDirectionsRepository {
  @override
  Future<ResponseWrapper<List<MobilityDirectionsModel>>> getDirectionsInfo(
      {required String startLongitude,
      required String startLatitude,
      required String endLongitude,
      required String endLatitude,
      required String priority,
      required String car_fuel,
      required bool car_hipass,
      required bool alternatives,
      required bool road_details}) async {
    try {
      final dio = Dio();
      dio.options.baseUrl = 'https://apis-navi.kakaomobility.com/v1';
      dio.interceptors.add(LogInterceptor(
          responseBody: true, requestBody: true)); // Api 통신 과정 Logging
      dio.options.headers['Authorization'] =
          'KakaoAK ${FlutterConfig.get('KAKAO_REST_API_KEY')}';
      dio.options.headers['Content-Type'] = 'application/json';
      final _api = KakaoMobilityApi(dio);

      final response = await _api.getDirectionsInfo(
          '${startLongitude},${startLatitude}',
          '${endLongitude},${endLatitude}',
          priority,
          car_fuel,
          car_hipass,
          alternatives,
          road_details);

      _logger.i('Kakao Mobility Response Data Check -> ${response}');
      final roadList = response.routes?.sections?.roads;

      _logger.i('Kakao Mobility Response Use Data Confirm -> ${roadList}');

      final resultDirections = roadList?.map((item) => item.toModel()).toList();

      return ResponseWrapper<List<MobilityDirectionsModel>>(
          status: 'success', code: '0000', message: '', data: resultDirections);
    } catch (e, stackTrace) {
      // 에러 확인...
      _logger.e('Error in getTourLocationInfo: $e');
      _logger.e('Stack trace: $stackTrace');
      return ResponseWrapper<List<MobilityDirectionsModel>>(
          status: 'error', code: '9999', message: e.toString(), data: []);
    }
  }
}
