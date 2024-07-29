import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../response_wrapper/tour_response_wrapper.dart';

part 'tour.api.g.dart';

@RestApi()
abstract class TourApi {
  factory TourApi(Dio dio, {String baseUrl}) = _TourApi;

  @GET('http://apis.data.go.kr/B551011/KorService1/locationBasedList1?')
  Future<TourResponseWrapper> getPlaceList(
    @Query('numOfRows') String numOfRows,
    @Query('pageNo') String pageNo,
    @Query('MobileOS') String MobileOS,
    @Query('MobileApp') String MobileApp,
    @Query('serviceKey') int serviceKey,
    @Query('_type') int _type,
    @Query('listYN') String listYN,
    @Query('arrange') String arrange,
    @Query('contentTypeId') String contentTypeId,
    @Query('mapX') String mapX,
    @Query('mapY') String mapY,
    @Query('radius') String radius,
    @Query('modifiedtime') String modifiedtime,
  );
}
