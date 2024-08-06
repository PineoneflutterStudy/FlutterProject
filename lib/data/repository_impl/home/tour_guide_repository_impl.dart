import '../../../domain/model/display/home/festival_info_list_model.dart';
import '../../../domain/model/display/home/image_info_list_model.dart';
import '../../../domain/model/display/home/location_list_model.dart';
import '../../../domain/repository/home/tour_guide_repository.dart';
import '../../data_source/api/kakao_mobility/kakao_mobility_api.dart';
import '../../data_source/api/tour_guide/tour_guide_api.dart';
import '../../dto/display/common/festival/tourFestivalInfo.dto.dart';
import '../../dto/display/common/image/tourImageInfo.dto.dart';
import '../../dto/display/common/location/tourLocation.dto.dart';
import '../../dto/display/meet/mobility.dto.dart';

class TourGuideRepositoryImpl extends TourGuideRepository {
  final TourGuideApi _api;
  final KakaoMobilityApi _mobilityApi;

  TourGuideRepositoryImpl({
    required TourGuideApi api,
    required KakaoMobilityApi mobilityApi
  }) : _api = api,
        _mobilityApi = mobilityApi;

  @override
  Future<List<TourLocationDto>> getLocationData(String longitude, String latitude) {
    return _api.loadTourLocationList(longitude, latitude);
  }

  @override
  Future<List<TourImageInfoDto>> getImageInfoData(ImageInfoListModel model) {
    return _api.loadTourImageInfoList(model);
  }

  @override
  Future<List<TourFestivalInfoDto>> getFestivalData(FestivalInfoListModel model) {
    return _api.loadTourFestivalInfoList(model);
  }

  /// # 출발지 - 목적지 경로 가져오기 ( Kakao Mobility )
  @override
  Future<MobilityDto> getGoalRoute(String startLongitude, String startLatitude, String endLongitude, String endLatitude) {
    return _mobilityApi.loadGetDirections(startLongitude, startLatitude, endLongitude, endLatitude);
  }


}
