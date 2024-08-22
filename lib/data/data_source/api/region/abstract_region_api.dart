import '../../../dto/display/like/filter/access_token_dto.dart';
import '../../../dto/display/like/filter/region_dto.dart';

abstract class AbstractRegionApi {
  Future<AccessTokenDto> getAccessToken();
  Future<RegionDto> getRegion(String accessToken, String? cd);
}