import '../../model/display/place/place.model.dart';
import '../repository.dart';

abstract class LikePlaceRepository extends Repository {
  Future<List<Place>> getLikePlaceList();
}