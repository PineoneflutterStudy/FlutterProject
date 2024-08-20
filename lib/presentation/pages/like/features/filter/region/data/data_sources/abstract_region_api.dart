import '../entity/access_token_entity.dart';
import '../entity/region_entity.dart';

abstract class AbstractRegionApi {
  Future<AccessTokenEntity> getAccessToken();
  Future<RegionEntity> getRegion(String accessToken, String? cd);
}