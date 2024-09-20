import '../../model/display/plan/place.model.dart';
import '../repository.dart';

abstract class LikePlaceRepository extends Repository {
  Future<List<Place>> getLikePlaceList(String ctgrId);
}