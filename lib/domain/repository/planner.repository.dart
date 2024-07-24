import '../../data/data_source/response_wrapper/response_wrapper.dart';
import '../model/display/place/place.model.dart';
import 'repository.dart';

/**
 * Plan 메뉴 Repository
 */
abstract class PlannerRepository extends Repository{
  Future<ResponseWrapper<List<Place>>> getPlaceList({
    required String query,
    required String category,
    required String x,
    required String y,
    required int radius,
    required int page,
    required String sort,
  });
}