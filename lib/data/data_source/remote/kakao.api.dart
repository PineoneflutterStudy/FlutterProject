import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/display/address/address.dto.dart';
import '../../dto/display/place/place.dto.dart';
import '../response_wrapper/kakao_response_wrapper.dart';

part 'kakao.api.g.dart';

@RestApi()
abstract class KakaoApi {
  factory KakaoApi(Dio dio, {String baseUrl}) = _KakaoApi;

  @GET('/keyword.json?')
  Future<KakaoResponseWrapper<PlaceDto>> getPlaceList(
    @Query('query') String query,
    @Query('category_group_code') String category,
    @Query('x') String x,
    @Query('y') String y,
    @Query('radius') int radius,
    @Query('page') int page,
    @Query('sort') String sort,
  );

  @GET('/address.json?')
  Future<KakaoResponseWrapper<AddressDto>> getAddressInfo(
    @Query('query') String query,
  );
}
