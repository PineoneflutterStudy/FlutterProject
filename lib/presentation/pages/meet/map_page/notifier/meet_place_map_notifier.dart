import 'dart:convert';
import 'dart:io';

import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/firebase/firebase_storage_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/kakao_mobility/kakao_mobility_data.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/model/display/meet/meet_directions.model.dart';
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

    if (resultTourLocationInfo == null) {
      state = state.copyWith(
          status: MeetPlaceMapStatus.failure,
        dto: List.empty(),
      );
      return;
    }

    // 관광 정보로 가져온 좌표값
    final resultLongitude = resultTourLocationInfo[0].mapx;
    final resultLatitude = resultTourLocationInfo[0].mapy;

    _logger.i(
        'Confirm Kakao Mobility api Use Data -> ${resultLongitude} / ${resultLatitude}');

    final List<MeetDirectionsModel> routes = [];

    for (int i = 0; i < addressList.length; i++) {
      var resultDirectionsInfo = await getDirectionsData(addressList[i], resultLongitude!, resultLatitude!);

      _logger.i('흠 뭐지 값 확인 -> ${resultDirectionsInfo!.length}');

      final routeModel = await getRouteData(resultDirectionsInfo);

      if (routeModel.duration == 0 || routeModel.distance == 0) {
        // 탐색 결과 경과 시간 및 경로 길이가 0이라면 정상적으로 검색되지 않았으므로 실패 및 비어있는 데이터 저장
        state = state.copyWith(
          status: MeetPlaceMapStatus.failure,
          directionsModel: List.empty(),
        );
        return;
      }

      routes.add(routeModel);
    }

    var destinationImgUrl = await _storage
        .getPngImageUrl('mapMarker/location_honey_case'); //  목적지 이미지
    var startingPointImgUrl = await _storage
        .getPngImageUrl('mapMarker/location_point_bee'); //  출발지 이미지

    state = state.copyWith(
      status: MeetPlaceMapStatus.success,
      dto: List.from(resultTourLocationInfo as Iterable),
      directionsModel: routes,
      destinationImg: destinationImgUrl.toString(),
      startingPointImg: startingPointImgUrl.toString(),
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
  Future<List<TourLocationModel>?> getTourLocationData(
      List<AddressModel> addressList) async {
    final centerValue = getCenter(addressList);

    _logger.i('Start Api -> Tour Location Service Api');

    var model = await _tourServiceRepo.getTourLocationInfo(
      serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
      numOfRows: TourApiRequestData().emptyIntData,
      pageNo: TourApiRequestData().emptyIntData,
      MobileOS: CommonUtils().getOsInfo(),
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

    /*if (model.code == '9999' || model.status == 'error') {
      // 데이터를 가져오는 과정에서 error 발생 시...
      state = state.copyWith(status: MeetPlaceMapStatus.failure);
      return List.empty();
    }*/

    _logger.i('Confirm getLocationData ( model ) -> ${model.data}');
    if (model.data == null || model.data!.isEmpty || model.data!.length == 0) {
      state = state.copyWith(status: MeetPlaceMapStatus.loading);
      for (int i = 1; i < 100; i++) {
        model = await _tourServiceRepo.getTourLocationInfo(
          serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
          numOfRows: TourApiRequestData().emptyIntData,
          pageNo: TourApiRequestData().emptyIntData,
          MobileOS: CommonUtils().getOsInfo(),
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
        _logger.i(
            'Radius Value ( ${TourApiRequestData().defaultRadius + (1000 * i)} ) Start Tour Location Api.. -> result : ${model}');
        if (model.data != null) {
          return model.data;
        } else if (model.data == null) {
          state = state.copyWith(status: MeetPlaceMapStatus.loading);
          return List.empty();
        }
      }
    } else {
      return model.data;
    }
  }

  Future<List<MobilityDirectionsModel>?> getDirectionsData(
      AddressModel addressList, String endMapX, String endMapY) async {
    // 출발지 개수 만큼 구하기
    final routeDto = await _directionsRepo.getDirectionsInfo(
        startLongitude: addressList.longitude.toString(),
        startLatitude: addressList.latitude.toString(),
        endLongitude: endMapX,
        endLatitude: endMapY,
        priority: KakaoMobilityData().defaultPriority,
        car_fuel: KakaoMobilityData().defaultCarFuel,
        car_hipass: KakaoMobilityData().defaultBoolean,
        alternatives: KakaoMobilityData().defaultBoolean,
        road_details: KakaoMobilityData().defaultBoolean);

    if (routeDto.status == 'success' || routeDto.code == '0000') {
      state = state.copyWith(
        status: MeetPlaceMapStatus.loading,
      );
      return routeDto.data;
    } else {
      state = state.copyWith(
        status: MeetPlaceMapStatus.failure,
        directionsModel: List.empty(),
      );
      return List.empty();
    }
  }

  Future<MeetDirectionsModel> getRouteData(List<MobilityDirectionsModel>? directionsInfo) async {
    final allRouteInfo = []; // 출발지 - 도착지 모든 경로 정보 List
    final longitudePathList = []; // 경로 경도 List
    final latitudePathList = []; // 경로 위도 List
    int fullDistance = 0;
    int fullDuration = 0;

    if (directionsInfo != null) {
      _logger.i('Check Route Count -> ${directionsInfo.length}');
      for (int i = 0; i < directionsInfo.length; i++) {
        fullDistance += directionsInfo[i].distance;
        fullDuration += directionsInfo[i].duration;
        for (int j = 0; j < directionsInfo[i].vertexes.length; j++) {
          allRouteInfo.add(directionsInfo[i].vertexes[j]);
        }
      }

      _logger.i('Confirm allRouteInfo data -> size - ${allRouteInfo.length} / ListInfo - ${allRouteInfo}');

      for (int i = 0; i < allRouteInfo.length; i++) {
        if (i % 2 == 0) {
          longitudePathList.add(allRouteInfo[i]); //  전체 루트의 경도 저장 -> 짝수만 사용 예정
        } else {
          latitudePathList.add(allRouteInfo[i]); // 전체 루트의 위도 저장 -> 짝수만 사용 예정
        }
      }

      _logger.i('Confirm Longitude List -> ${longitudePathList}');
      _logger.i('Confirm Latitude List -> ${latitudePathList}');

      final longitudeJson = jsonEncode(longitudePathList);
      final latitudeJson = jsonEncode(latitudePathList);

      if (longitudePathList.isNotEmpty || latitudePathList.isNotEmpty) {
        return MeetDirectionsModel(distance: fullDistance, duration: fullDuration, longitudePaths: longitudeJson, latitudePaths: latitudeJson);
      } else {
        return MeetDirectionsModel(distance: 0, duration: 0, longitudePaths: longitudeJson, latitudePaths: latitudeJson);
      }
    } else {
      _logger.e('Check Route is Empty & null.. !');
      return MeetDirectionsModel(distance: 0, duration: 0, longitudePaths: '', latitudePaths: '');
    }
  }
}
