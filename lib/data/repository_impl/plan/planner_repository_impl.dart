import '../../../domain/model/display/plan/address.model.dart';
import '../../../domain/model/display/plan/place.model.dart';
import '../../../domain/repository/planner.repository.dart';
import '../../data_source/remote/kakao.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';
import '../../mapper/plan/address.mapper.dart';
import '../../mapper/plan/place.mapper.dart';

/**
 * Plan 메뉴 Repository
 */
class PlannerRepositoryImpl implements PlannerRepository {
  final KakaoApi _kakaoApi;

  PlannerRepositoryImpl(this._kakaoApi);

  @override
  Future<ResponseWrapper<List<Place>>> getPlaceList({
    required String query,
    String? category,
    String? x,
    String? y,
    int? radius,
    int? page,
    String? sort,
  }) async {
    try {
      final response = await _kakaoApi.getPlaceList(query, category, x, y, radius, page, sort);
      final places = response.documents.map((item) => item.toModel()).toList();

      return ResponseWrapper<List<Place>>(status: 'success', code: '0000', message: '', data: places);
    } catch (e) {
      return ResponseWrapper<List<Place>>(status: 'error', code: '9999', message: e.toString(), data: []);
    }
  }


  @override
  Future<ResponseWrapper<Address>> getAddressInfo({required String query}) async {
    try {
      final response = await _kakaoApi.getAddressInfo(query);
      final addressInfo = response.documents.map((item) => item.toModel()).toList();
      if(addressInfo.isEmpty){
        return ResponseWrapper<Address>(status: 'success', code: '2222', message: 'addressInfo is Empty', data: null);
      }else{
        return ResponseWrapper<Address>(status: 'success', code: '0000', message: '', data: addressInfo[0]);
      }
    } catch (e) {
      return ResponseWrapper<Address>(status: 'error', code: '9999', message: e.toString(), data: null);
    }
  }
}