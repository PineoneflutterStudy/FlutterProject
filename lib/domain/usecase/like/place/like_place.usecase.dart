import '../../../repository/like/like_place_repository.dart';
import '../../../repository/repository.dart';
import '../../base/remote.usecase.dart';

class LikePlaceUsecase {

  final LikePlaceRepository _likePlaceRepository;

  LikePlaceUsecase(this._likePlaceRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_likePlaceRepository);
  }
}