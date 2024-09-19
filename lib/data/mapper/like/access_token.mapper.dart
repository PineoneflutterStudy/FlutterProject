import '../../../domain/model/display/like/access_token.dart';
import '../../dto/display/like/filter/access_token_dto.dart';

extension AccessTokenX on AccessTokenDto {

  AccessTokenModel toModel() {
    return AccessTokenModel(
        accessToken: result?.accessToken ?? '',
    );
  }

}