import '../../../data/dto/display/home/tour_festival_info.dto.dart';
import '../../../data/dto/display/home/tour_image_info.dto.dart';
import '../../../data/dto/display/meet/mobility.dto.dart';
import '../../model/display/home/tour_festival_info.model.dart';
import '../../model/display/home/tour_image_info.model.dart';
import '../../model/display/meet/tour_location.model.dart';

abstract class TourGuideRepository {
  Future<List<TourLocationModel>> getLocationData(String longitude, String latitude, String radius);
  /*Future<List<TourImageInfoDto>> getImageInfoData(TourImageInfoModel model);
  Future<List<TourFestivalInfoDto>> getFestivalData(TourFestivalInfoModel model);*/
  Future<MobilityDto> getGoalRoute(String startLongitude, String startLatitude, String endLongitude, String endLatitude);

}