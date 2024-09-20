import '../../../core/utils/db_key.dart';
import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../domain/model/display/plan/place.model.dart';
import '../../../domain/repository/like/like_place_repository.dart';

class LikePlaceRepositoryImpl implements LikePlaceRepository {

  final FirebaseFirestoreUtil firestore;

  LikePlaceRepositoryImpl(this.firestore);

  @override
  Future<List<Place>> getLikePlaceList(String ctgrId) async {
    final List<Place> placeList = [];
    final response =
      await firestore.getSubCollectionListFromCollection(DBKey.DB_LIKES);

    if (response != null && response.isNotEmpty) {
      for (var data in response) {
        try {
          Place place = Place.fromJson(data);
          if (ctgrId.isNotEmpty) {
            if (ctgrId != place.categoryId) {
              continue;
            }
          }
          placeList.add(place);
        } catch (e) {
          print('Error converting place data: $e');
        }
      }
    }

    return placeList;
  }
}