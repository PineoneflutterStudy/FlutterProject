import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/logger.dart';
import 'tour_api_request_data.dart';

/*final Logger _logger = CustomLogger.logger;

// https://apis.data.go.kr/B551011/KorService1/[ apiUrlList ]?  request Url
final String baseUrl = 'https://apis.data.go.kr/B551011/KorService1/';

/// # 한국관광공사 - 관광정보 서비스
/// ## 앱 내 사용 api 목록
/// 1. 위치 기반 관광정보 조회
/// 2. 이미지 정보 조회
/// 3. 행사 정보 조회

abstract class TourGuideApi {
  Future<List<TourLocationDto>> loadTourLocationList(
      String longitude, String latitude, String radius);

  Future<List<TourImageInfoDto>> loadTourImageInfoList(
      ImageInfoListModel model);

  Future<List<TourFestivalInfoDto>> loadTourFestivalInfoList(
      FestivalInfoListModel model);
}

class TourGuideApiImpl implements TourGuideApi {
  final dio = Dio();
  final requestTourApiData = TourApiRequestData();

  *
   * 위치기반 관광정보 조회

  @override
  Future<List<TourLocationDto>> loadTourLocationList(
      String longitude, String latitude, String radius) async {
    try {
      String makeUrl = '';
      String apiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY');

      List<String> requestList = requestTourApiData.locationParamList;
      String requestType = requestTourApiData.apiUrlList[0];
      // https://apis.data.go.kr/B551011/KorService1/locationBasedList1
      makeUrl = baseUrl + requestType; // Default Url Setting

      TourLocationDto model = requestTourApiData.getLocationListModel(
          apiKey,
          longitude,
          latitude,
          radius, // 500 부터...
          TourApiRequestData().contentTypes[7]);

      for (int i = 0; i < requestList.length; i++) {
        if (model.paramValues[i].isNotEmpty) {
          makeUrl +=
              '${requestTourApiData.locationParamList[i] + model.paramValues[i]}';
        }
      }
      _logger.i('Confirm Tour Location List Url -> $makeUrl');

      final Response<Map<String, dynamic>> response = await dio.get(makeUrl);

      // Api 통신 성공시...
      if (response.statusCode == 200) {
        _logger.i('Confirm Response Data.. -> ${response}');

        final bodyData = response.data?['response']['body']['totalCount'];

        final aaaData = response.data?['response'];
        _logger.i('그럼이건어떄 -> ${aaaData}');

        _logger.i('Check Total Count -> ${bodyData}'); // api 결과 개수

        if (bodyData == 0) { // 검색 결과가 없으므로 빈값 return
          return [];
        }
        final itemJson =
            response.data?['response']['body']['items']['item'] as List;
        final transDto =
            (itemJson).map((e) => TourLocationDto.fromMap(e)).toList();

        _logger.i('Confirm DTO Data -> $transDto');
        return transDto;
      } else {
        _logger.e('Server Error... Code is -> ${response.statusCode}');
        return [];
      }
    } on DioException catch (e) {
      _logger.e(e);
      return [];
    } on Exception catch (e) {
      _logger.e(e);
      return [];
    }
  }

  *
   * 이미지 정보 조회

  @override
  Future<List<TourImageInfoDto>> loadTourImageInfoList(
      ImageInfoListModel model) async {
    try {
      String makeUrl = '';

      List<String> requestList = requestTourApiData.imageInfoParamList;
      String requestType = requestTourApiData.apiUrlList[2];
      // https://apis.data.go.kr/B551011/KorService1/detailImage1
      makeUrl = baseUrl + requestType; // Default Url Setting

      for (int i = 0; i < requestList.length; i++) {
        if (model.paramValues[i].isNotEmpty) {
          makeUrl +=
              '${requestTourApiData.imageInfoParamList[i] + model.paramValues[i]}';
        }
      }
      _logger.i('Confirm Tour Location List Url -> $makeUrl');

      final Response<Map<String, dynamic>> response = await dio.get(makeUrl);

      // Api 통신 성공시...
      if (response.statusCode == 200) {
        _logger.i('Confirm Response Data.. -> ${response}');
      } else {
        _logger.e('Server Error... Code is -> ${response.statusCode}');
      }
    } on DioException catch (e) {
      _logger.e(e);
    }
    return [];
  }

  *
   * 행사 정보 조회

  @override
  Future<List<TourFestivalInfoDto>> loadTourFestivalInfoList(
      FestivalInfoListModel model) async {
    try {
      String makeUrl = '';

      List<String> requestList = requestTourApiData.festivalParamList;
      String requestType = requestTourApiData.apiUrlList[1];
      // https://apis.data.go.kr/B551011/KorService1/searchFestival1
      makeUrl = baseUrl + requestType; // Default Url Setting

      for (int i = 0; i < requestList.length; i++) {
        if (model.paramValues[i].isNotEmpty) {
          makeUrl +=
              '${requestTourApiData.festivalParamList[i] + model.paramValues[i]}';
        }
      }
      _logger.i('Confirm Tour Location List Url -> $makeUrl');

      final Response<Map<String, dynamic>> response = await dio.get(makeUrl);
      _logger.i('Confirm Response Data.. -> ${response}');

      // Api 통신 성공시...
      if (response.statusCode == 200) {
        _logger.i('Confirm Response Data.. -> ${response}');
      } else {
        _logger.e('Server Error... Code is -> ${response.statusCode}');
      }
    } on DioException catch (e) {
      _logger.e(e);
    }
    return [];
  }
}*/
