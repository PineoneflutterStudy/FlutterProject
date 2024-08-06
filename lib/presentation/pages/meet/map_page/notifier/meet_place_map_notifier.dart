import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../data/dto/display/meet/mobility.dto.dart';
import '../../../../../domain/model/display/home/location_list_model.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/repository/home/tour_guide_repository.dart';
import '../../empty_page/notifier/address_info_notifier.dart';
import '../../providers.dart';
import '../screens/meet_place_map_screen.dart';
import 'meet_place_map_state.dart';

final Logger _logger = CustomLogger.logger;

final meetPlaceStateProvider =
    StateNotifierProvider<MeetPlaceMapNotifier, MeetPlaceMapState>(
        (ref) => MeetPlaceMapNotifier(
              repo: ref.read(tourGuideApiRepositoryProvider),
            ));

class MeetPlaceMapNotifier extends StateNotifier<MeetPlaceMapState> {
  MeetPlaceMapNotifier({
    required TourGuideRepository repo,
  })  : _repo = repo,
        super(const MeetPlaceMapState());

  final TourGuideRepository _repo;

  /// # 맵에 필요한 정보 Fetch
  /// ### 중앙지점을 이용한
  Future<void> getMapInfo(List<AddressModel> addressList) async {
    // 내가 state 반영해 줘야 하는 정보들은
    // 1. 중앙 마커 찍을 관광지 정보 좌표값
    state = state.copyWith(status: MeetPlaceMapStatus.loading); // 로딩...

    // 중앙 좌표값을 이용한 위치기반 관광 정보 Data Get
    final centerValue = getCenter(addressList);
    final dto = await _repo.getLocationData(
        centerValue[0].toString(), centerValue[1].toString());

    // 관광 정보로 가져온 좌표값
    final resultLongitude = dto[0].mapx;
    final resultLatitude = dto[0].mapy;

    final List<MobilityDto> routes = [];
    // 출발지 개수 만큼 구하기
    for (int i = 0; i < addressList.length; i++) {
      // 2. 각각의 출발지에서 선에 필요한 경로 검색 결과 좌표들
      final routeDto = await _repo.getGoalRoute(
          addressList[i].longitude.toString(),
          addressList[i].latitude.toString(),
          resultLongitude,
          resultLatitude);

      routes.add(routeDto);
    }


    /// 내가 state 반영해 줘야 하는 정보들은
    /// 1. 중앙 마커 찍을 관광지 정보 좌표값
    /// 2. 각각의 출발지에서 선에 필요한 경로 검색 결과 좌표들
    ///

    state = state.copyWith(
      status: MeetPlaceMapStatus.success,
      dto: List.from(dto),
      directionsDto: routes,
    );
  }

  /// # 중앙 좌표 정보
  /// ### index 0 : 경도 평균 ( longitude )
  /// ### index 1 : 위도 평균 ( latitude )
  List<double> getCenter(List<AddressModel> addressList) {
    List<double> centers = [];
    double longitudes = 0.0;
    double latitudes = 0.0;
    for (int i = 0; i < addressList.length; i++) {
      longitudes += addressList[i].longitude;
      latitudes += addressList[i].latitude;
    }

    centers.add(longitudes / addressList.length);
    centers.add(latitudes / addressList.length);

    return centers;
  }
}
