import '../../../repository/like/region_repository.dart';
import '../../base/remote.usecase.dart';

class RegionUsecase {

  final RegionRepository _regionRepository;

  RegionUsecase(this._regionRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_regionRepository);
  }
}