import '../../data/data_sources/region_impl_api.dart';
import '../models/access_token_model.dart';
import '../models/region_model.dart';
import 'abstract_region_repository.dart';

class RegionRepository extends AbstractRegionRepository {
  final RegionImplApi regionImplApi;

  RegionRepository(this.regionImplApi);

  @override
  Future<AccessTokenModel> getAccessToken() async {
     final entity = await regionImplApi.getAccessToken();
     final accessToken = entity.result?.accessToken;
     return AccessTokenModel(accessToken: accessToken ?? "");
  }

  @override
  Future<List<RegionModel>> getRegionAddr(String accessToken, String? cd) async {
    final List<RegionModel> resultList = [];

    final entity = await regionImplApi.getRegion(accessToken, cd ?? "");
    final regionList = entity.result;

    if (regionList != null && regionList.isNotEmpty) {
      for (var region in regionList) {
        resultList.add(
          RegionModel(
            cd: region.cd!,
            addr: region.addr_name!,
          )
        );
      }
    }

    return resultList;
  }
}