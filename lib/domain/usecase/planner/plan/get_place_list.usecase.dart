import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result.dart';
import '../../../repository/planner.repository.dart';
import '../../base/remote.usecase.dart';

/**
 * RemoteUsecase<PlannerRepository>를 확장하여 PlannerRepository를 사용한 구체적인 유스케이스
 * 키워드로 장소 정보들 불러오기
 */
class GetPlaceListUsecase extends RemoteUsecase<PlannerRepository> {
  final String search;
  final String? category;
  final String? x;
  final String? y;
  final int? radius;
  final int? page;
  final String? sort;

  GetPlaceListUsecase({required this.search, this.category, this.x, this.y, this.radius, this.page, this.sort});

  @override
  Future call(PlannerRepository repository) async {
    final result = await repository.getPlaceList(query: search, category: category, x: x, y: y, radius: radius, page: page, sort: sort);

    return (result.status == 'success')
        ? Result.success(result.data ?? [])
        : Result.failure(ErrorResponse(status: result.status, code: result.code, message: result.message));
  }
}
