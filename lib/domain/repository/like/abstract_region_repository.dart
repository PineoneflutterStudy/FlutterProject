import '../../model/display/like/access_token_model.dart';
import '../../model/display/like/region_model.dart';

abstract class AbstractRegionRepository {

  Future<AccessTokenModel> getAccessToken();
  Future<List<RegionModel>> getRegionAddr(String accessToken, String? cd);
}