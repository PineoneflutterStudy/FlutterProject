import '../../../repository/like/like_place_repository.dart';
import '../../base/remote.usecase.dart';
import 'like_place.usecase.dart';

class GetLikePlaceUsecase extends RemoteUsecase<LikePlaceRepository> {

  @override
  Future call(LikePlaceRepository repository) async {
    final result = await repository.getLikePlaceList();
    return (result.isNotEmpty) ? result : [];
  }
}