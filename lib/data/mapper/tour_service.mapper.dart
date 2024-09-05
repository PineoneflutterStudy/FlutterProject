import '../../domain/model/display/home/tour_festival_info.model.dart';
import '../../domain/model/display/home/tour_image_info.model.dart';
import '../../domain/model/display/meet/tour_location.model.dart';
import '../dto/display/home/tour_festival_info.dto.dart';
import '../dto/display/home/tour_image_info.dto.dart';
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

extension TourFestivalX on TourFestivalInfoDto {
  TourFestivalInfoModel toModel() {
    return TourFestivalInfoModel(
      addr1: addr1 ?? '',
      addr2: addr2 ?? '',
      areacode: areacode ?? '',
      booktour: booktour ?? '',
      cat1: cat1 ?? '',
      cat2: cat2 ?? '',
      cat3: cat3 ?? '',
      contentid: contentid ?? '',
      contenttypeid: contenttypeid ?? '',
      createdtime: createdtime ?? '',
      eventstartdate: eventstartdate ?? '',
      eventenddate: eventenddate ?? '',
      firstimage: firstimage ?? '',
      firstimage2: firstimage2 ?? '',
      cpyrhtDivCd: cpyrhtDivCd ?? '',
      mapx: mapx ?? '',
      mapy: mapy ?? '',
      mlevel: mlevel ?? '',
      modifiedtime: modifiedtime ?? '',
      sigungucode: sigungucode ?? '',
      tel: tel ?? '',
      title: title ?? '',
    );
  }
}

extension TourImageX on TourImageInfoDto {
  TourImageInfoModel toModel() {
    return TourImageInfoModel(
        contentid: contentid ?? '',
        imgname: imgname ?? '',
        originimgurl: originimgurl ?? '',
        serialnum: serialnum ?? '',
        cpyrhtDivCd: cpyrhtDivCd ?? '',
        smallimageurl: smallimageurl ?? ''
    );
  }
}