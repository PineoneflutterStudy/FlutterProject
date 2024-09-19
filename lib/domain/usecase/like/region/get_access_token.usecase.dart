import '../../../repository/like/region_repository.dart';
import '../../base/remote.usecase.dart';

class GetAccessTokenUsecase extends RemoteUsecase<RegionRepository> {

  final String _consumer_key;
  final String _consumer_secret;

  GetAccessTokenUsecase(
      this._consumer_key,
      this._consumer_secret,
  );

  @override
  Future call(RegionRepository repository) async {
    return await repository.getAccessToken(consumer_key: _consumer_key, consumer_secret: _consumer_secret);
  }
}