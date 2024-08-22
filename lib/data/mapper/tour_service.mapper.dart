import '../../domain/model/display/home/tour_image_info.model.dart';
import '../../domain/model/display/meet/tour_location.model.dart';
import '../dto/display/meet/tour_location.dto.dart';

extension TourLocationX on TourLocationDto {
  TourLocationModel toModel() {
    return TourLocationModel(
      addr1: addr1 ?? '',
      addr2: addr2 ?? '',
      areacode: areacode ?? '',
      createdtime: createdtime ?? '',
      mapx: mapx ?? '',
      mapy: mapy ?? '',
      mlevel: mlevel ?? '',
      sigungucode: sigungucode ?? '',
      tel: tel ?? '',
      title: title ?? '',
    );
  }
}