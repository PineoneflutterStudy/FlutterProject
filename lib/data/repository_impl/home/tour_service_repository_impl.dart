import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/model/display/meet/tour_location.model.dart';
import '../../../domain/repository/tour_service.repository.dart';
import '../../data_source/remote/tour_service.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';

import '../../dto/display/meet/tour_location.dto.dart';
import '../../mapper/tour_service.mapper.dart';

final Logger _logger = CustomLogger.logger;

class TourServiceRepositoryImpl extends TourServiceRepository {

  @override
  Future<ResponseWrapper<List<TourLocationModel>>> getTourLocationInfo({
    required String serviceKey, // !! 필수 인증키(서비스키)
    required int numOfRows,
    required int pageNo,
    required String MobileOS,
    required String MobileApp,
    required String type,
    required String listYN,
    required String arrange,
    required String mapX,
    required String mapY,
    required String radius,
    required String contentTypeId,
    required String modifiedtime}) async {
    try {
      final dio = Dio();
      dio.options.baseUrl = 'https://apis.data.go.kr/B551011/KorService1';
      dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true)); // Api 통신 과정 Logging
      final _api = TourServiceApi(dio);

      final response = await _api.getTourLocationInfo(
          serviceKey, numOfRows, pageNo, MobileOS, MobileApp, type,
          listYN, arrange, mapX, mapY, radius, contentTypeId, modifiedtime);

      _logger.i('Raw response: $response');

      final items = response.response?.body?.items?.item;
      _logger.i('Items: $items');
      final transItem = items?.map((e) => TourLocationDto.fromJson(e as Map<String, dynamic>))
        .toList();

      final  locations = transItem!.map((item) => item.toModel()).toList();
      _logger.i('Check Response Data - item : $locations');

      return ResponseWrapper<List<TourLocationModel>>(status: 'success', code: '0000', message: '', data: locations);
    } catch (e, stackTrace) {
      // 에러 확인...
      _logger.e('Error in getTourLocationInfo: $e');
      _logger.e('Stack trace: $stackTrace');
      return ResponseWrapper<List<TourLocationModel>>(status: 'error', code: '9999', message: e.toString(), data: List.empty());
    }
  }

}
