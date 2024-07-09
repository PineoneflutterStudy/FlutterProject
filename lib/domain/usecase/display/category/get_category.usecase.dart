import '../../../../core/utils/constant.dart';
import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

/**
 * 상단 카테고리 유형 카테고리 Title, Id 받아오기
 */
class GetCategorysUsecase extends RemoteUsecase<DisplayRepository> {
  final MenuType menuType;

  GetCategorysUsecase(this.menuType);

  Future call(DisplayRepository repository) async {
    final result = await repository.getCategoryList(menuType: menuType);
    return (result.status == 'success')
        ? Result.Success(result.data ?? [])
        : Result.failure(ErrorResponse(
            status: result.status,
            code: result.code,
            message: result.message,
          ));
  }
}