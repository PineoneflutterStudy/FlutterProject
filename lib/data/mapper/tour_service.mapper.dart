import '../../domain/model/display/home/tour_detail_info.model.dart';
import '../../domain/model/display/home/tour_festival_info.model.dart';
import '../../domain/model/display/home/tour_image_info.model.dart';
import '../../domain/model/display/meet/tour_location.model.dart';
import '../dto/display/home/tour_detail_info.dto.dart';
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

extension TourDetailX on TourDetailInfoDto {
  TourDetailInfoModel toModel() {
    return TourDetailInfoModel(
    contentid: contentid ?? '', //	콘텐츠ID
    contenttypeid: contenttypeid ?? '', //	콘텐츠타입ID
    agelimit: agelimit ?? '', //	관람가능연령
    bookingplace: bookingplace ?? '', //	예매처
    discountinfofestival: discountinfofestival ?? '', //	할인정보
    eventenddate: eventenddate ?? '', //	행사종료일
    eventhomepage: eventhomepage ?? '', //	행사홈페이지
    eventplace: eventplace ?? '', //	행사장소
    eventstartdate: eventstartdate ?? '', //	행사시작일
    festivalgrade: festivalgrade ?? '', //	축제등급
    placeinfo: placeinfo ?? '', //	행사장위치안내
    playtime: playtime ?? '', //	공연시간
    program: program ?? '', //	행사프로그램
    spendtimefestival: spendtimefestival ?? '', //	관람소요시간
    sponsor1: sponsor1 ?? '', //	주최자정보
    sponsor1tel: sponsor1tel ?? '', //	주최자연락처
    sponsor2: sponsor2 ?? '', //	주관사정보
    sponsor2tel: sponsor2tel ?? '', //	주관사연락처
    subevent: subevent ?? '', //	부대행사
    usetimefestival: usetimefestival ?? '', //	이용요금
    );
  }
}