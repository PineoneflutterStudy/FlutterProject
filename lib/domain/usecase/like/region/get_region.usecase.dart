import '../../../repository/like/region_repository.dart';
import '../../base/remote.usecase.dart';

class GetRegionUsecase extends RemoteUsecase<RegionRepository> {

  final String accessToken;
  final String? cd;

  GetRegionUsecase(this.accessToken, this.cd);

  @override
  Future call(RegionRepository repository) async {
    return await repository.getRegion(accessToken: accessToken, cd: cd);
  }}