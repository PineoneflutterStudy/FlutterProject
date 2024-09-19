import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/http.dart';

import '../../../dto/display/like/filter/access_token_dto.dart';
import '../../../dto/display/like/filter/region_dto.dart';

part 'region.api.g.dart';

@RestApi()
abstract class RegionApi {
  factory RegionApi(Dio dio, {String baseUrl}) = _RegionApi;

  @GET('/OpenAPI3/auth/authentication.json')
  Future<AccessTokenDto> getAccessToken(
    @Query('consumer_key') String consumer_key,
    @Query('consumer_secret') String consumer_secret,
  );

  @GET('/OpenAPI3/addr/stage.json')
  Future<RegionDto> getRegion(
    @Query('accessToken') String accessToken,
    @Query('cd') String? cd,
  );
}