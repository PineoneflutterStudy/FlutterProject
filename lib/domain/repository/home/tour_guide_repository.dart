import '../../../data/dto/display/common/festival/tourFestivalInfo.dto.dart';
import '../../../data/dto/display/common/image/tourImageInfo.dto.dart';
import '../../../data/dto/display/common/location/tourLocation.dto.dart';
import '../../../data/dto/display/meet/mobility.dto.dart';
import '../../model/display/home/festival_info_list_model.dart';
import '../../model/display/home/image_info_list_model.dart';
import '../../model/display/home/location_list_model.dart';

abstract class TourGuideRepository {
  Future<List<TourLocationDto>> getLocationData(String longitude, String latitude);
  Future<List<TourImageInfoDto>> getImageInfoData(ImageInfoListModel model);
  Future<List<TourFestivalInfoDto>> getFestivalData(FestivalInfoListModel model);
  Future<MobilityDto> getGoalRoute(String startLongitude, String startLatitude, String endLongitude, String endLatitude);

}