import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/model/display/meet/tour_location.model.dart';
import '../../../domain/repository/meet/mobility_directions_repository.dart';
import '../../data_source/remote/kakao_mobility.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';

final Logger _logger = CustomLogger.logger;

class MobilityDirectionsRepositoryImpl extends MobilityDirectionsRepository {
  @override
  Future<ResponseWrapper<List<TourLocationModel>>> getDirectionsInfo(
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
      dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true)); // Api 통신 과정 Logging
      dio.options.headers['Authorization'] = 'KakaoAK ${FlutterConfig.get('KAKAO_REST_API_KEY')}';
      dio.options.headers['Content-Type'] = 'application/json';
      final _api = KakaoMobilityApi(dio);

      final response = await _api.getDirectionsInfo(
          '${startLongitude},${startLatitude}', '${endLongitude},${endLatitude}',
          priority, car_fuel, car_hipass, alternatives, road_details);

      _logger.i('Kakao Mobility Response Data Check -> ${response}');


      return ResponseWrapper<List<TourLocationModel>>(status: 'success', code: '0000', message: '', data: []);
    } catch (e, stackTrace) {
      // 에러 확인...
      _logger.e('Error in getTourLocationInfo: $e');
      _logger.e('Stack trace: $stackTrace');
      return ResponseWrapper<List<TourLocationModel>>(status: 'error', code: '9999', message: e.toString(), data: []);
    }
  }
}
