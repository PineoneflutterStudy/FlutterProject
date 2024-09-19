import 'package:flutter_config/flutter_config.dart';

import '../../../../domain/model/display/like/access_token.dart';
import '../../../../domain/model/display/like/region.dart';
import '../../../../domain/repository/like/region_repository.dart';
import '../../../../domain/usecase/like/region/get_access_token.usecase.dart';
import '../../../../domain/usecase/like/region/get_region.usecase.dart';
import '../../../../domain/usecase/like/region/region.usecase.dart';
import '../../../../service_locator.dart';

mixin RegionUtil {

  Future<AccessTokenModel> getAccessTokenModel() async {

    RegionUsecase regionUsecase = RegionUsecase(locator<RegionRepository>());

    String consumer_key = FlutterConfig.get('SGIS_REGION_INFO_SERVICE_SERVICE_ID');
    String consumer_secret = FlutterConfig.get('SGIS_REGION_INFO_SERVICE_SECRET_KEY');

    final result = await regionUsecase.execute(
        usecase: GetAccessTokenUsecase(consumer_key, consumer_secret)
    );

    return result;
  }

  Future<List<RegionModel>> getRegionList(String accessToken, String? cd) async {
    RegionUsecase regionUsecase = RegionUsecase(locator<RegionRepository>());

    final result = await regionUsecase.execute(
        usecase: GetRegionUsecase(accessToken, cd)
    );

    return result;
  }

}