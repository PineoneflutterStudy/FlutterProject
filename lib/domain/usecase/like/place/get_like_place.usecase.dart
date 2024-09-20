import '../../../repository/like/like_place_repository.dart';
import '../../base/remote.usecase.dart';

class GetLikePlaceUsecase extends RemoteUsecase<LikePlaceRepository> {

  final String ctgrId;

  GetLikePlaceUsecase(this.ctgrId);

  @override
  Future call(LikePlaceRepository repository) async {
    final result = await repository.getLikePlaceList(ctgrId);
    return result;
  }
}