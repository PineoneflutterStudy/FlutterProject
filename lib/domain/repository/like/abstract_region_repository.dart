import '../../model/display/like/access_token.dart';
import '../../model/display/like/region.dart';

abstract class AbstractRegionRepository {

  Future<AccessTokenModel> getAccessToken();
  Future<List<RegionModel>> getRegionAddr(String accessToken, String? cd);
}