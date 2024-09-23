import '../../../../domain/model/display/plan/place.model.dart';

mixin LikePlaceUtil {


  List<Place> sortRegion(List<Place> placeList, String regionName) {

    List<Place> result = [];

    for (var place in placeList) {
      String address = place.addressName;

      if (address.isNotEmpty && address.contains(regionName)) {
        print('필터링된 장소 이름 -> ${address}');
        result.add(place);
      }
    }

    return result;
  }
}