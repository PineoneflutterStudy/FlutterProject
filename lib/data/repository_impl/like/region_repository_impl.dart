import '../../../domain/repository/like/region_repository.dart';
import '../../data_source/api/region/region.api.dart';

import '../../mapper/like/access_token.mapper.dart';
import '../../mapper/like/region.mapper.dart';
import '../../../domain/model/display/like/access_token.dart';
import '../../../domain/model/display/like/region.dart';

class RegionRepositoryImpl extends RegionRepository {
  final RegionApi _regionApi;

  RegionRepositoryImpl(this._regionApi);

  @override
  Future<AccessTokenModel> getAccessToken({
    required String consumer_key,
    required String consumer_secret,
  }) async {

    final response =
      await _regionApi.getAccessToken(consumer_key, consumer_secret);
    return response.toModel();
  }

  @override
  Future<List<RegionModel>> getRegion ({
    required String accessToken,
    required String? cd,
  }) async {
    final List<RegionModel> resultList = [];

    final entity = await _regionApi.getRegion(accessToken, cd);
    final isSuccess = entity.errMsg == 'Success' && entity.errCd == 0;

    if (isSuccess) {
      final regionList = entity.result;
      if (regionList != null && regionList.isNotEmpty) {
        for (var region in regionList) {
          resultList.add(region.toModel());
        }
      }
    } else {
      print('[Server Response Failed] errMsg '
          '-> ${entity.errMsg} / errCd -> ${entity.errCd}');
    }

    return resultList;
  }
}