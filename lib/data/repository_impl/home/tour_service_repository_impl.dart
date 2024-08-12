import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/logger.dart';
import '../../../core/utils/rest_client/rest_client.dart';
import '../../../domain/model/display/meet/tour_location.model.dart';
import '../../../domain/repository/tour_service.repository.dart';
import '../../data_source/api/kakao_mobility/kakao_mobility_api.dart';
import '../../data_source/remote/tour_service.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';

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

      _logger.i('엥???? 1 -> ${dio}');

      final _api = TourServiceApi(dio);

      _logger.i('엥???? 2 -> ${_api}');

      final response = await _api.getTourLocationInfo(
          serviceKey, numOfRows, pageNo, MobileOS, MobileApp, type,
          listYN, arrange, mapX, mapY, radius, contentTypeId, modifiedtime);

      _logger.i('엥???? 33333 -> ${response}');

      //final  locations = response.response.map((item) => item.toModel()).toList();
      final locations = response.toString();

      _logger.i('여기 일단 확인이요 1 -> ${locations}');

      return ResponseWrapper<List<TourLocationModel>>(status: 'success', code: '0000', message: '', data: List.empty());
    } catch (e) {
      return ResponseWrapper<List<TourLocationModel>>(status: 'error', code: '9999', message: e.toString(), data: []);
    }
  }

}
