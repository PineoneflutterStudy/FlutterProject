import '../../domain/model/display/place/place.model.dart';
import '../../presentation/pages/plan/utils/plan_util.dart';
import '../dto/display/place/place.dto.dart';

extension PlaceX on PlaceDto {
  Place toModel() {
    return Place(
      placeId: id ?? '',
      placeName: place_name ?? '',
      categoryName: category_name ?? '',
      phone: phone ?? '',
      addressName: address_name ?? '',
      roadAddressName: road_address_name ?? '',
      x: x ?? '',
      y: y ?? '',
      placeUrl: place_url ?? '',
      distance: distance ?? '',
      walkTravelTime: PlanUtil().getWalkTravelTime(distance),
      carTravelTime: PlanUtil().getCarTravelTime(distance),
    );
  }
}
