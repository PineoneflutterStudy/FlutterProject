import 'dart:convert';

import 'package:http/http.dart';
import '../../../../core/utils/constant/like/access_token_constant.dart';
import '../../../../core/utils/constant/like/region_constant.dart';
import '../../../dto/display/like/filter/access_token_dto.dart';
import '../../../dto/display/like/filter/region_dto.dart';
import 'abstract_region_api.dart';

class RegionImplApi extends AbstractRegionApi {

  Client client = Client();

  @override
  Future<AccessTokenDto> getAccessToken() async {
    try {
      final response = await client.get(
        Uri.parse(
          accessToken()
        )
      );

      if (response.statusCode == 200) {
        print('토큰 서버 통신 성공 ${response.body}' );
        return AccessTokenDto.fromJson(jsonDecode(response.body));
      }

    } catch (e) {
      throw Exception('Failed Server Response -> ${e.toString()}');
    }
    throw UnimplementedError();
  }

  @override
  Future<RegionDto> getRegion(String accessToken, String? cd) async {
    print(accessToken);

    try {
      final response = await client.get(
          Uri.parse(
              regionAddress(accessToken, cd)
          )
      );

      if (response.statusCode == 200) {
        print('지역 정보 조회 성공 -> ${response.body}');
        return RegionDto.fromJson(jsonDecode(response.body));
      }

    } catch (e) {
      throw Exception('Failed Server Response');
    }
    throw UnimplementedError();
  }
}