import '../../../domain/model/display/plan/place.model.dart';
import '../../../presentation/pages/plan/utils/plan_util.dart';
import '../../dto/display/place/place.dto.dart';
class PlanUtilImpl with PlanUtil {}

extension PlaceX on PlaceDto {
  Place toModel() {
    return Place(
      placeId: id ?? '',
      placeName: place_name ?? '',
      categoryId: category_group_code,
      categoryName: category_name ?? '',
      phone: phone ?? '',
      addressName: address_name ?? '',
      roadAddressName: road_address_name ?? '',
      x: x ?? '',
      y: y ?? '',
      placeUrl: place_url ?? '',
      distance: distance ?? '',
      walkTravelTime: PlanUtilImpl().getWalkTravelTime(distance),
      carTravelTime: PlanUtilImpl().getCarTravelTime(distance),
    );
  }
}
