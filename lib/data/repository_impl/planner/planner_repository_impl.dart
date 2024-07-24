import '../../../domain/model/display/place/place.model.dart';
import '../../../domain/repository/planner.repository.dart';
import '../../data_source/remote/kakao.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';
import '../../mapper/place.mapper.dart';

/**
 * Plan 메뉴 Repository
 */
class PlannerRepositoryImpl implements PlannerRepository {
  final KakaoApi _kakaoApi;

  PlannerRepositoryImpl(this._kakaoApi);

  @override
  Future<ResponseWrapper<List<Place>>> getPlaceList(
      {required String query,
      required String category,
      required String x,
      required String y,
      required int radius,
      required int page,
      required String sort}) async {
    try {
      final response = await _kakaoApi.getPlaceList(query, category, x, y, radius, page, sort);
      final places = response.documents.map((item) => item.toModel()).toList();

      return ResponseWrapper<List<Place>>(
        status: 'success',
        code: '0000',
        message: '',
        data: places,
      );
    } catch (e) {
      return ResponseWrapper<List<Place>>(
        status: 'error',
        code: '9999',
        message: e.toString(),
        data: [],
      );
    }
  }
}