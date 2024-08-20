import 'dart:convert';

import 'package:http/http.dart';
import '../../../../../core/utils/constant/access_token_constant.dart';
import '../../../../../core/utils/constant/region_constant.dart';
import '../entity/access_token_entity.dart';
import '../entity/region_entity.dart';
import 'abstract_region_api.dart';

class RegionImplApi extends AbstractRegionApi {

  Client client = Client();

  @override
  Future<AccessTokenEntity> getAccessToken() async {
    try {
      final response = await client.get(
        Uri.parse(
          accessToken()
        )
      );

      if (response.statusCode == 200) {
        print('토큰 서버 통신 성공 ${response.body}' );
        return AccessTokenEntity.fromJson(jsonDecode(response.body));
      }

    } catch (e) {
      throw Exception('Failed Server Response -> ${e.toString()}');
    }
    throw UnimplementedError();
  }

  @override
  Future<RegionEntity> getRegion(String accessToken, String? cd) async {
    print(accessToken);

    try {
      final response = await client.get(
          Uri.parse(
              regionAddress(accessToken, cd)
          )
      );

      if (response.statusCode == 200) {
        print('지역 정보 조회 성공 -> ${response.body}');
        return RegionEntity.fromJson(jsonDecode(response.body));
      }

    } catch (e) {
      throw Exception('Failed Server Response');
    }
    throw UnimplementedError();
  }
}