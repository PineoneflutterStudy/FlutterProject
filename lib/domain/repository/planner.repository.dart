import '../../data/data_source/response_wrapper/response_wrapper.dart';
import '../model/display/plan/address.model.dart';
import '../model/display/plan/place.model.dart';
import 'repository.dart';

/**
 * Plan 메뉴 Repository
 */
abstract class PlannerRepository extends Repository {
  Future<ResponseWrapper<List<Place>>> getPlaceList({required String query, String? category, String? x, String? y, int? radius, int? page, String? sort});

  Future<ResponseWrapper<Address>> getAddressInfo({required String query});
}
