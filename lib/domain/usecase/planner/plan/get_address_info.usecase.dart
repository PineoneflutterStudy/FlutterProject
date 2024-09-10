import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../repository/planner.repository.dart';
import '../../base/remote.usecase.dart';

/**
 * RemoteUsecase<PlannerRepository>를 확장하여 PlannerRepository를 사용한 구체적인 유스케이스
 * 키워드로 장소 정보들 불러오기
 */
class GetAddressInfoUsecase extends RemoteUsecase<PlannerRepository> {
  final String query;
  GetAddressInfoUsecase(this.query);

  @override
  Future call(PlannerRepository repository) async {
    final result = await repository.getAddressInfo(query: query);
    return (result.status == 'success')
        ? Result.success(result.data)
        : Result.failure(ErrorResponse(status: result.status, code: result.code, message: result.message));
  }
}