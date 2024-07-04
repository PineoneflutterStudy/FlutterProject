import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

class GetCategorysUsecase extends RemoteUsecase<DisplayRepository> {
  final String menuType;

  GetCategorysUsecase(this.menuType);

  Future call(DisplayRepository repository) async {
    final result = await repository.getCategoryList(menuType: menuType);
    return (result.status == '0')
        ? Result.Success(result.data ?? [])
        : Result.failure(ErrorResponse(
            status: result.status,
            code: result.code,
            message: result.message,
          ));
  }
}