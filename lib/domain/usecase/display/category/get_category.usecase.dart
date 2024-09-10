import '../../../../core/utils/constant.dart';
import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../repository/display.repository.dart';
import '../../base/remote.usecase.dart';

/**
 * RemoteUsecase<DisplayRepository>를 확장하여 DisplayRepository를 사용한 구체적인 유스케이스
 * 메뉴 타입을 기반으로 카테고리 목록을 가져오기
 */
class GetCategorysUsecase extends RemoteUsecase<DisplayRepository> {
  final MenuType menuType;

  GetCategorysUsecase(this.menuType);

  Future call(DisplayRepository repository) async {
    final result = await repository.getCategoryList(menuType: menuType);
    return (result.status == 'success')
        ? Result.success(result.data ?? [])
        : Result.failure(ErrorResponse(status: result.status, code: result.code, message: result.message));
  }
}