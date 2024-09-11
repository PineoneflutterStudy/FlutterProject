import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/model/display/home/tour_detail_info.model.dart';
import '../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../../domain/model/display/home/tour_image_info.model.dart';
import '../../../domain/model/display/meet/tour_location.model.dart';
import '../../../domain/repository/tour_service.repository.dart';
import '../../data_source/remote/tour_service.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';

import '../../dto/display/home/tour_detail_info.dto.dart';
import '../../dto/display/home/tour_festival_info.dto.dart';
import '../../dto/display/home/tour_image_info.dto.dart';
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

  @override
  Future<ResponseWrapper<List<TourFestivalInfoModel>>> getTourFestivalInfo({required String serviceKey,
      required int numOfRows,
      required int pageNo,
      required String MobileOS,
      required String MobileApp,
      required String type,
      required String listYN,
      required String arrange,
      required String eventStartDate,
      required String eventEndDate,
      required String areaCode,
      required String sigunguCode,
      required String modifiedtime}) async {
    try {
      final dio = Dio();
      dio.options.baseUrl = 'https://apis.data.go.kr/B551011/KorService1';
      dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true)); // Api 통신 과정 Logging
      final _api = TourServiceApi(dio);

      final response = await _api.getTourFestivalInfo(
          serviceKey, numOfRows, pageNo, MobileOS, MobileApp, type,
          listYN, arrange, eventStartDate);

      _logger.i('Raw response: $response');

      final items = response.response?.body?.items?.item;
      _logger.i('Items: $items');
      final transItem = items?.map((e) => TourFestivalInfoDto.fromJson(e as Map<String, dynamic>))
          .toList();

      final  locations = transItem!.map((item) => item.toModel()).toList();
      _logger.i('Check Response Data - item : $locations');

      return ResponseWrapper<List<TourFestivalInfoModel>>(status: 'success', code: '0000', message: '', data: locations);
    } catch (e, stackTrace) {
      // 에러 확인...
      _logger.e('Error in getTourFestivalInfo: $e');
      _logger.e('Stack trace: $stackTrace');
      return ResponseWrapper<List<TourFestivalInfoModel>>(status: 'error', code: '9999', message: e.toString(), data: List.empty());
    }
  }

  @override
  Future<ResponseWrapper<List<TourImageInfoModel>>> getTourImageInfo(
      {required String serviceKey,
      required String MobileOS,
      required String MobileApp,
      required String type,
      required String contentId,
      required String imageYN,
      required String subImageYN,
      required int numOfRows,
      required int pageNo}) async {
    try {
      final dio = Dio();
      dio.options.baseUrl =
          'http://apis.data.go.kr/B551011/KorService1';
      dio.interceptors.add(LogInterceptor(
          responseBody: true, requestBody: true)); // Api 통신 과정 Logging
      final _api = TourServiceApi(dio);

      final response = await _api.getTourImageInfo(serviceKey, numOfRows,
          pageNo, MobileOS, MobileApp, type, contentId, imageYN, subImageYN);

      _logger.i('Raw response: $response');

      final items = response.response?.body?.items?.item;
      _logger.i('Items: $items');
      final transItem = items
          ?.map((e) => TourImageInfoDto.fromJson(e as Map<String, dynamic>))
          .toList();

      final images = transItem?.map((item) => item.toModel()).toList();
      _logger.i('Check Response Data - item : $images');

      return ResponseWrapper<List<TourImageInfoModel>>(
          status: 'success', code: '0000', message: '', data: images);
    } catch (e, stackTrace) {
      // 에러 확인...
      _logger.e('Error in getTourImageInfo: $e');
      _logger.e('Stack trace: $stackTrace');
      return ResponseWrapper<List<TourImageInfoModel>>(
          status: 'error',
          code: '9999',
          message: e.toString(),
          data: List.empty());
    }
  }

  @override
  Future<ResponseWrapper<List<TourDetailInfoModel>>> getTourDetailInfo(
      {required String serviceKey,
      required int numOfRows,
      required int pageNo,
      required String MobileOS,
      required String MobileApp,
      required String type,
      required String contentId,
      required String contentTypeId}) async {
    try {
      final dio = Dio();
      dio.options.baseUrl = 'http://apis.data.go.kr/B551011/KorService1';
      dio.interceptors.add(LogInterceptor(
          responseBody: true, requestBody: true)); // Api 통신 과정 Logging
      final _api = TourServiceApi(dio);

      final response = await _api.getTourDetailInfo(serviceKey, numOfRows,
          pageNo, MobileOS, MobileApp, type, contentId, contentTypeId);

      _logger.i('Raw response: $response');

      final items = response.response?.body?.items?.item;
      _logger.i('Items: $items');
      final transItem = items
          ?.map((e) => TourDetailInfoDto.fromJson(e as Map<String, dynamic>))
          .toList();

      final images = transItem?.map((item) => item.toModel()).toList();
      _logger.i('Check Response Data - item : $images');

      return ResponseWrapper<List<TourDetailInfoModel>>(
          status: 'success', code: '0000', message: '', data: images);
    } catch (e, stackTrace) {
      // 에러 확인...
      _logger.e('Error in getTourImageInfo: $e');
      _logger.e('Stack trace: $stackTrace');
      return ResponseWrapper<List<TourDetailInfoModel>>(
          status: 'error',
          code: '9999',
          message: e.toString(),
          data: List.empty());
    }
  }
}
