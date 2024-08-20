import '../models/access_token_model.dart';
import '../models/region_model.dart';

abstract class AbstractRegionRepository {

  Future<AccessTokenModel> getAccessToken();
  Future<List<RegionModel>> getRegionAddr(String accessToken, String? cd);
}