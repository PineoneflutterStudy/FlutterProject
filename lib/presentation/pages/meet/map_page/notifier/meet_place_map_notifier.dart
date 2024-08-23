import 'dart:io';

import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/firebase/firebase_storage_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/kakao_mobility/kakao_mobility_api.dart';
import '../../../../../data/data_source/api/kakao_mobility/kakao_mobility_data.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../data/dto/display/meet/mobility.dto.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/model/display/meet/mobility_directions.model.dart';
import '../../../../../domain/model/display/meet/tour_location.model.dart';
import '../../../../../domain/repository/meet/mobility_directions_repository.dart';
import '../../../../../domain/repository/tour_service.repository.dart';
import '../../providers.dart';
import 'meet_place_map_state.dart';

final Logger _logger = CustomLogger.logger;
final FirebaseStorageUtil _storage = FirebaseStorageUtil();

final meetPlaceStateProvider =
    StateNotifierProvider<MeetPlaceMapNotifier, MeetPlaceMapState>(
        (ref) => MeetPlaceMapNotifier(
              tourServiceRepo: ref.read(apiProvider),
              DirectionsRepo: ref.read(kakaoMobilityApiProvider),
            ));

class MeetPlaceMapNotifier extends StateNotifier<MeetPlaceMapState> {
  MeetPlaceMapNotifier({
    required TourServiceRepository tourServiceRepo,
    required MobilityDirectionsRepository DirectionsRepo,
  })  : _tourServiceRepo = tourServiceRepo,
        _directionsRepo = DirectionsRepo,
        super(const MeetPlaceMapState());

  final TourServiceRepository _tourServiceRepo;
  final MobilityDirectionsRepository _directionsRepo;

  /// # 맵에 필요한 정보 Fetch
  /// ### 중앙지점을 이용한 목적지 및 경로 구하기...
  /// ### 덤으로 사용할 이미지까지...
  Future<void> getMapInfo(List<AddressModel> addressList) async {
    // 내가 state 반영해 줘야 하는 정보들은
    // 1. 중앙 마커 찍을 관광지 정보 좌표값
    state = state.copyWith(status: MeetPlaceMapStatus.loading); // 로딩...

    // 중앙 좌표값을 이용한 위치기반 관광 정보 Data Get
    var resultTourLocationInfo = await getTourLocationData(addressList);

    // 관광 정보로 가져온 좌표값
    final resultLongitude = resultTourLocationInfo?[0].mapx;
    final resultLatitude = resultTourLocationInfo?[0].mapy;

    _logger.i('Confirm Kakao Mobility api Use Data -> ${resultLongitude} / ${resultLatitude}');

    var resultDirectionsInfo = await getDirectionsData(addressList, resultLongitude!, resultLatitude!);

    //var destinationImgUrl = await _storage.getPngImageUrl('mapMarker/location_honey_case'); //  목적지 이미지
    //var startingPointImgUrl = await _storage.getPngImageUrl('mapMarker/location_point_bee'); //  출발지 이미지

    /// 내가 state 반영해 줘야 하는 정보들은
    /// 1. 중앙 마커 찍을 관광지 정보 좌표값
    /// 2. 각각의 출발지에서 선에 필요한 경로 검색 결과 좌표들
    ///

    state = state.copyWith(
      status: MeetPlaceMapStatus.success,
      dto: List.from(resultTourLocationInfo as Iterable),
      //directionsDto: routes,
      //destinationImg: destinationImgUrl.toString(),
      //startingPointImg: startingPointImgUrl.toString(),
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

  /// # 위치 기반 관광정보 api 실행
  Future<List<TourLocationModel>?> getTourLocationData(List<AddressModel> addressList) async {

    final centerValue = getCenter(addressList);

    var model = await _tourServiceRepo.getTourLocationInfo(
        serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
        numOfRows: TourApiRequestData().emptyIntData,
        pageNo: TourApiRequestData().emptyIntData,
        MobileOS: getOsInfo(),
        MobileApp: TourApiRequestData().appName,
        type: TourApiRequestData().responseType,
        listYN: TourApiRequestData().emptyData,
        arrange: TourApiRequestData().arrangeList[1],
        mapX: centerValue[0].toString(),
        mapY: centerValue[1].toString(),
        radius: '${TourApiRequestData().defaultRadius}',
        contentTypeId: TourApiRequestData().contentTypes[7].toString(),
        modifiedtime: TourApiRequestData().emptyData,
    );


    _logger.i('Confirm getLocationData ( model ) -> ${model.data}');
    if (model.data == null) {
      state = state.copyWith(status: MeetPlaceMapStatus.loading);
      for (int i = 1; i < 100; i++) {
        model = await _tourServiceRepo.getTourLocationInfo(
        serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
        numOfRows: TourApiRequestData().emptyIntData,
        pageNo: TourApiRequestData().emptyIntData,
        MobileOS: getOsInfo(),
        MobileApp: TourApiRequestData().appName,
        type: TourApiRequestData().responseType,
        listYN: TourApiRequestData().emptyData,
        arrange: TourApiRequestData().arrangeList[1],
        mapX: centerValue[0].toString(),
        mapY: centerValue[1].toString(),
        radius: '${TourApiRequestData().defaultRadius + (1000 * i)}',
        contentTypeId: TourApiRequestData().contentTypes[7].toString(),
        modifiedtime: TourApiRequestData().emptyData,
        );
        _logger.i('Radius Value ( ${TourApiRequestData().defaultRadius + (1000 * i)} ) Start Tour Location Api.. -> result : ${model}');
        if (model.data != null) {
          return model.data;
        } else if (model.data == null) {
          state = state.copyWith(
              status: MeetPlaceMapStatus.loading);
        }
      }
    }
    return List.empty();
  }

  String getOsInfo()  {
    switch (Platform.operatingSystem) {
      case 'android':
        return TourApiRequestData().osList[0];
        break;
      case 'ios':
        return TourApiRequestData().osList[1];
        break;
      case 'windows':
        return TourApiRequestData().osList[2];
        break;
      default:
        return TourApiRequestData().osList[3];
    }
  }

  Future<List<MobilityDirectionsModel>?> getDirectionsData(List<AddressModel> addressList, String endMapX, String endMapY) async {

    final List<MobilityDto> routes = [];
    // 출발지 개수 만큼 구하기
    for (int i = 0; i < addressList.length; i++) {
      // 2. 각각의 출발지에서 선에 필요한 경로 검색 결과 좌표들
      final routeDto = await _directionsRepo.getDirectionsInfo(
          startLongitude: addressList[i].longitude.toString(),
          startLatitude: addressList[i].latitude.toString(),
          endLongitude: endMapX,
          endLatitude: endMapY,
          priority: KakaoMobilityData().defaultPriority,
          car_fuel: KakaoMobilityData().defaultCarFuel,
          car_hipass: KakaoMobilityData().defaultBoolean,
          alternatives: KakaoMobilityData().defaultBoolean,
          road_details: KakaoMobilityData().defaultBoolean);

      _logger.i('이건 진짜 궁금한걸 확인!!! -> ${routeDto}');
      //routes.add(routeDto);
    }
  }
}
