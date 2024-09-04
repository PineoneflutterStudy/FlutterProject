import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/kakao_mobility/kakao_mobility_data.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/model/display/meet/meet_directions.model.dart';
import '../../../../../domain/model/display/meet/mobility_directions.model.dart';
import '../../../../../domain/repository/meet/mobility_directions_repository.dart';
import '../../providers.dart';
import 'meet_mobility_state.dart';

part 'meet_mobility_notifier.g.dart';

final Logger _logger = CustomLogger.logger;

@riverpod
class MeetMobilityNotifier extends _$MeetMobilityNotifier {
  @override
  MeetMobilityState build() {
    return MeetMobilityState();
  }

  MobilityDirectionsRepository get _repo => ref.read(kakaoMobilityApiProvider);

  Future<void> getAllRouteData(
      List<AddressModel> addressList, String longitude, String latitude) async {
    state = state.copyWith(status: MeetMobilityStatus.loading);
    // 관광 정보로 가져온 좌표값 -> 0 번쨰꺼 전달 받아야 한다.
    /*final resultLongitude = resultTourLocationInfo[0].mapx;
    final resultLatitude = resultTourLocationInfo[0].mapy;*/

    final List<MeetDirectionsModel> routes = [];
    _logger.i('Confirm AdderessList Data -> $addressList');

    // empty Check !
    if (addressList.isEmpty || addressList.isEmpty) {
      _logger.e('AddressList is Empty..!!');
      state = state.copyWith(
        status: MeetMobilityStatus.failure,
        directionsModel: List.empty(),
      );
      return;
    }

    for (int i = 0; i < addressList.length; i++) {
      final resultDirectionInfo = await getDirectionsData(addressList[i], longitude, latitude);
      if (resultDirectionInfo == null) {
        _logger.e('Get Direction Info.. But Fail..!');
        state = state.copyWith(
          status: MeetMobilityStatus.failure,
          directionsModel: List.empty(),
        );
        return;
      }

      _logger.i('Check Result Directions Data Length -> ${resultDirectionInfo.length}');
      final routeModel = await getRouteData(resultDirectionInfo);

      if (routeModel.duration == 0 || routeModel.distance == 0) {
        _logger
            .e('Route Search... Fail...! ( duration is 0 || distance is 0 )');
        state = state.copyWith(
            status: MeetMobilityStatus.failure,
          directionsModel: List.empty(),
        );
        return;
      }

      routes.add(routeModel);
    }

    state = state.copyWith(
        status: MeetMobilityStatus.success,
        directionsModel: routes,
    );
  }

  Future<List<MobilityDirectionsModel>?> getDirectionsData(
      AddressModel addressList, String endMapX, String endMapY) async {
    state = state.copyWith(status: MeetMobilityStatus.loading);

    // 출발지 개수 만큼 구하기
    final routeDto = await _repo.getDirectionsInfo(
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
        status: MeetMobilityStatus.loading,
      );
      return routeDto.data;
    } else {
      state = state.copyWith(
        status: MeetMobilityStatus.failure,
      );
      return List.empty();
    }
  }

  Future<MeetDirectionsModel> getRouteData(
      List<MobilityDirectionsModel>? directionsInfo) async {
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

      _logger.i(
          'Confirm allRouteInfo data -> size - ${allRouteInfo.length} / ListInfo - ${allRouteInfo}');

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
        return MeetDirectionsModel(
            distance: fullDistance,
            duration: fullDuration,
            longitudePaths: longitudeJson,
            latitudePaths: latitudeJson);
      } else {
        return MeetDirectionsModel(
            distance: 0,
            duration: 0,
            longitudePaths: longitudeJson,
            latitudePaths: latitudeJson);
      }
    } else {
      _logger.e('Check Route is Empty & null.. !');
      return MeetDirectionsModel(distance: 0, duration: 0, longitudePaths: '', latitudePaths: '');
    }
  }
}
