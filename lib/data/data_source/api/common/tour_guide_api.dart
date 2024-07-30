import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/common/tour_guide/festival_info_list_model.dart';
import '../../../../domain/model/common/tour_guide/image_info_list_model.dart';
import '../../../../domain/model/common/tour_guide/location_list_model.dart';
import '../../../dto/display/common/festival/tourFestivalInfo.dto.dart';
import '../../../dto/display/common/image/tourImageInfo.dto.dart';
import '../../../dto/display/common/location/tourLocation.dto.dart';
import 'tour_api_request_data.dart';

/**
 * 한국관광공사 - 관광정보 서비스
 * 앱 내 사용 api 목록
 * 1. 위치 기반 관광정보 조회
 * 2. 이미지 정보 조회
 * 3. 행사 정보 조회
 */
final Logger _logger = CustomLogger.logger;

// https://apis.data.go.kr/B551011/KorService1/[ apiUrlList ]?  request Url
final String baseUrl = 'https://apis.data.go.kr/B551011/KorService1/';

abstract class TourGuideApi {
  Future<List<TourLocationDto>> loadTourLocationList(LocationListModel model);
  Future<List<TourImageInfoDto>> loadTourImageInfoList(ImageInfoListModel model);
  Future<List<TourFestivalInfoDto>> loadTourFestivalInfoList(FestivalInfoListModel model);
}

class TourGuideApiImpl implements TourGuideApi {

  final dio = Dio();
  final requestTourApiData = TourApiRequestData();

  /**
   * 위치기반 관광정보 조회
   */
  @override
  Future<List<TourLocationDto>> loadTourLocationList(LocationListModel model) async {
    FlutterConfig.loadEnvVariables();
    try {
      String makeUrl = '';

      String getApiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY');
      List<String> requestList = requestTourApiData.locationParamList;
      String requestType = requestTourApiData.apiUrlList[0];
      // https://apis.data.go.kr/B551011/KorService1/locationBasedList1?serviceKey=[Api Key]
      makeUrl = baseUrl + requestType + requestList[0] + getApiKey;  // Default Url Setting

      for (int i = 1; i < requestList.length; i++) {
        if (model.paramValues[i].isNotEmpty) {
          makeUrl += '${requestTourApiData.locationParamList[i] + model.paramValues[i]}';
        }
      }

      _logger.i('주소 확인 -> $makeUrl');

      /*final Response<Map<String, dynamic>> response = await dio
          .get('$baseUrl/$requestType?serviceKey=$getApiKey}');*/
    } on DioException catch (e) {
      _logger.e(e);
    }
    return [];
  }

  /**
   * 이미지 정보 조회
   */
  @override
  Future<List<TourImageInfoDto>> loadTourImageInfoList(ImageInfoListModel model) async {
    FlutterConfig.loadEnvVariables();
    try {
      String getApiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY');
      String requestType = requestTourApiData.apiUrlList[2];

      final Response<Map<String, dynamic>> response = await dio
          .get('$baseUrl/$requestType?serviceKey=$getApiKey}');
    } on DioException catch (e) {
      _logger.e(e);
    }
    return [];
  }

  /**
   * 행사 정보 조회
   */
  @override
  Future<List<TourFestivalInfoDto>> loadTourFestivalInfoList(FestivalInfoListModel model) async {
    FlutterConfig.loadEnvVariables();
    try {
      String getApiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY');
      String requestType = requestTourApiData.apiUrlList[1];

      final Response<Map<String, dynamic>> response = await dio
          .get('$baseUrl/$requestType?serviceKey=$getApiKey}');
    } on DioException catch (e) {
      _logger.e(e);
    }
    return [];
  }

}