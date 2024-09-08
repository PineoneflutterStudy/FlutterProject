import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../domain/model/display/plan/place.model.dart';
import '../../../domain/repository/like/like_place_repository.dart';

class LikePlaceRepositoryImpl implements LikePlaceRepository {

  final FirebaseFirestoreUtil firestore;

  LikePlaceRepositoryImpl(this.firestore);

  @override
  Future<List<Place>> getLikePlaceList() async {
    final List<Place> placeList = [];
    final response =
      await firestore.getSubCollectionListFromCollection('Likes');

    if (response != null && response.isNotEmpty) {
      for (var data in response) {
        try {
          placeList.add(Place.fromJson(data));
        } catch (e) {
          print('Error converting place data: $e');
        }
      }
    }

    return placeList;
  }
}