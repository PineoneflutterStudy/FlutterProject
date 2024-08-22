/*
import '../../../domain/model/display/meet/tour_location.model.dart';
import '../../../domain/repository/home/tour_guide_repository.dart';
import '../../data_source/api/kakao_mobility/kakao_mobility_api.dart';

import '../../data_source/remote/tour_service.api.dart';
import '../../dto/display/meet/mobility.dto.dart';

class TourGuideRepositoryImpl extends TourGuideRepository {
  final TourServiceApi _api;
  final KakaoMobilityApi _mobilityApi;

  TourGuideRepositoryImpl({
    required TourServiceApi api,
    required KakaoMobilityApi mobilityApi
  }) : _api = api,
        _mobilityApi = mobilityApi;

  @override
  Future<List<TourLocationModel>> getLocationData(String longitude, String latitude, String radius) {
    return _api.getTourLocationInfo(longitude, latitude, radius);
  }

*/
/*  @override
  Future<List<TourImageInfoDto>> getImageInfoData(ImageInfoListModel model) {
    return _api.loadTourImageInfoList(model);
  }

  @override
  Future<List<TourFestivalInfoDto>> getFestivalData(FestivalInfoListModel model) {
    return _api.loadTourFestivalInfoList(model);
  }*//*


  /// # 출발지 - 목적지 경로 가져오기 ( Kakao Mobility )
  @override
  Future<MobilityDto> getGoalRoute(String startLongitude, String startLatitude, String endLongitude, String endLatitude) {
    return _mobilityApi.loadGetDirections(startLongitude, startLatitude, endLongitude, endLatitude);
  }


}
*/
