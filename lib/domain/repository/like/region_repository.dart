import '../../model/display/like/access_token.dart';
import '../../model/display/like/region.dart';
import '../repository.dart';

abstract class RegionRepository extends Repository {

  Future<AccessTokenModel> getAccessToken({
    required String consumer_key,
    required String consumer_secret,
  });
  Future<List<RegionModel>> getRegion({
    required String accessToken,
    required String? cd
  });
}