import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/location_db.model.dart';
import '../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../main/common/component/dialog/common_dialog.dart';
import '../notifiers/address_local/address_shprf_notifier.dart';
import '../notifiers/meet_firestore/meet_firestore_notifier.dart';
import '../notifiers/meet_firestore/meet_firestore_state.dart';
import '../notifiers/meet_mobility/meet_mobility_notifier.dart';
import '../notifiers/meet_mobility/meet_mobility_state.dart';
import '../widgets/common/map_loading_fail_widget.dart';
import '../widgets/common/map_loading_widget.dart';
import '../widgets/map_bottom_sheet_widget.dart';

/**
 * 1. 출발위치 입력받아 가운데 지점 구하기
 * 2. 입력한 출발지 마크 표시
 */

final Logger _logger = CustomLogger.logger;
late String apiKey = '';
late LocationDbModel addressModel;

// ======================================================================
// Kakao Map Page
// ======================================================================
/// ## 약속장소 정하기 Screen ( Kakao Map Screen )
class MeetSavePlaceMapScreen extends StatelessWidget {
  const MeetSavePlaceMapScreen({required this.address, super.key});

  final LocationDbModel address;

  @override
  Widget build(BuildContext context) {
    addressModel = address;
    return ProviderScope(child: MapView());
  }
}

// ======================================================================
// Kakao Map View (top Appbar / mapView)
// ======================================================================
class MapView extends ConsumerStatefulWidget {
  const MapView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapView();
}

class _MapView extends ConsumerState<MapView> {
  @override
  void initState() {
    super.initState();
    _logger.i('[ _MapView ] initState!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(
              '약속장소 정하기!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          )),
      body: _ContentMapView(),
    );
  }
}

// ======================================================================
// Kakao Map View (content)
// ======================================================================
class _ContentMapView extends ConsumerStatefulWidget {
  _ContentMapView({super.key});

  @override
  ConsumerState<_ContentMapView> createState() => __ContentMapViewState();
}

class __ContentMapViewState extends ConsumerState<_ContentMapView> {
  Set<Marker> markers = {}; // 맵 마커..
  Set<Polyline> polyLines = {}; // 길찾기 검색 결과 Line
  List<CustomOverlay> customOverlays = []; // 맵 마커 상단 텍스트..

  late KakaoMapController mapController;

  @override
  void initState() {
    super.initState();
    _logger.i('[ __ContentMapViewState ] initState!!');
    // 진입 시 관광 정보 부터 조회...
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetFireStoreNotifierProvider.notifier).getMarkerImage(); // Firebase 이미지 정보 획득
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          // 관광 정보 서비스 Api -> 카카오 모빌리티 자동차 길찾기 api 사용
          final mobilityState = ref.watch(meetMobilityNotifierProvider);
          final mobilityStatus = ref.watch(meetMobilityNotifierProvider.select((p) => p.status));
          // 파이어베이스
          final firestoreState = ref.watch(meetFireStoreNotifierProvider); // 파이어베이스 - 마커에 사용할 이미지 정보 사용
          final firestoreStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.storageStatus));


          _logger.i('[ __ContentMapViewState ] Kakao Mobility Status -> ${mobilityStatus}');
          switch (mobilityStatus) {
            case MeetMobilityStatus.initial:
              {
                Future.delayed(Duration.zero, () {
                  ref.read(meetMobilityNotifierProvider.notifier)
                      .getAllRouteData(
                      addressModel.starting_point_list,
                      addressModel.destination_point[0].mapx,
                      addressModel.destination_point[0].mapy);
                });

                ref.read(addressShprfNotifierProvider.notifier).setDestination(
                    addressModel.destination_point[0]);

                return MapLoadingWidget();
              }
            case MeetMobilityStatus.loading:
              {
                return MapLoadingWidget();
              }
            case MeetMobilityStatus.failure:
              {
                return MapLoadingWidget();
              }
            case MeetMobilityStatus.success:
              {
                _logger.i('[ __ContentMapViewState ] Firebase Storage Status -> ${firestoreStatus}');
                switch (firestoreStatus) {
                  case MeetFireStorageStatus.initial:
                  case MeetFireStorageStatus.loading:
                    {
                      // Init -> CircularProgress
                      return MapLoadingWidget();
                    }
                  case MeetFireStorageStatus.failure:
                    {
                      // 실패시 토스트 팝업 제공
                      CommonUtils.showToastMsg('약속장소를 생성하는데 실패하였습니다..');
                      Future.delayed(
                        const Duration(
                          milliseconds: 3000
                        ), () {
                        context.pop();
                      });
                      return MapLoadingFailWidget();
                    }
                  case MeetFireStorageStatus.success:
                    {
                      return Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 40),
                            child: PopScope(
                              canPop: false,
                              onPopInvoked: (bool didPop) {
                                if (didPop) {
                                  // IOS 뒤로가기 버튼, ButtonWidget이건 뒤로가기 제스쳐가 감지되면 호출 된다.
                                  print('didPop호출');
                                  return;
                                }
                                CommonDialog.confirmDialog(
                                    context: context,
                                    title: '약속장소 찾기 종료',
                                    content: '약속장소 찾기를 종료하시겠습니까?',
                                    btn1Text: '아니오',
                                    btn2Text: '네',
                                    onBtn1Pressed: (context) {
                                      context.pop();
                                    },
                                    onBtn2Pressed: (context) async {
                                      ref.read(addressShprfNotifierProvider.notifier)
                                          .resetAddress();
                                      context.pop();
                                      context.pop();
                                    });
                              },
                              child: KakaoMap(
                                onMapCreated: ((controller) async {
                                  // 맵 생성 Callback
                                  mapController = controller;
                                  List<LatLng> latLngs = [];

                                  // 출발지 좌표 마커 생성
                                  for (int i = 0; i < addressModel.starting_point_list.length; i++) {
                                    _logger.i('사용하는데서 확인  2 -> ${firestoreState.startingPointInfo}');
                                    List<LatLng> polyLatLngs = [];
                                    // ==================== Markers ====================
                                    markers.add(Marker(
                                      markerId: UniqueKey().toString(),
                                      latLng: await LatLng(
                                          addressModel.starting_point_list[i].latitude,
                                          addressModel.starting_point_list[i].longitude),
                                      markerImageSrc:
                                      '${firestoreState.startingPointInfo[i].imagePath}',
                                      width: 40,
                                      height: 40,
                                    ));

                                    latLngs.add(
                                        LatLng(addressModel.starting_point_list[i].latitude,
                                            addressModel.starting_point_list[i].longitude));

                                    // ==================== CustomOverLay ( 마커 위 텍스트 : 출발지 ) ====================
                                    final startCustomOverlay = CustomOverlay(
                                      customOverlayId: UniqueKey().toString(),
                                      latLng: LatLng(
                                          addressModel.starting_point_list[i].latitude,
                                          addressModel.starting_point_list[i].longitude),
                                      content:
                                      '<p style="background-color: white; padding: 8px; border-radius: 8px;">${i +
                                          1}번</p>',
                                      xAnchor: 0.4,
                                      yAnchor: 0.1,
                                      zIndex: 0,
                                    );

                                    customOverlays.add(startCustomOverlay);

                                    // ==================== PolyLine ====================
                                    var latitudeList = jsonDecode(mobilityState
                                        .directionsModel[i].latitudePaths);
                                    var longitudeList = jsonDecode(mobilityState
                                        .directionsModel[i].longitudePaths);

                                    // 주소 정보 업데이트
                                    ref.read(addressShprfNotifierProvider.notifier)
                                        .addAddressInput(
                                        MeetAddressModel(
                                            index: addressModel.starting_point_list[i]
                                                .index,
                                            address: addressModel.starting_point_list[i]
                                                .address,
                                            latitude: addressModel.starting_point_list[i]
                                                .latitude,
                                            longitude: addressModel.starting_point_list[i]
                                                .longitude,
                                            totalDuration: addressModel
                                                .starting_point_list[i].totalDuration,
                                            totalDistance: addressModel
                                                .starting_point_list[i].totalDistance
                                        ));

                                    // DirectionDto의 경도 리스트 길이만큼 실행...
                                    for (int j = 0; j < latitudeList.length; j++) {
                                      if (j % 2 == 0) {
                                        // index 가 짝수 일때만 추가..
                                        polyLatLngs.add(LatLng(
                                            double.tryParse(
                                                latitudeList[j].toString())!,
                                            double.tryParse(
                                                longitudeList[j].toString())!));
                                      } else if (j == latitudeList.length - 1) {
                                        polyLatLngs.add(LatLng(
                                            double.tryParse(
                                                latitudeList[j].toString())!,
                                            double.tryParse(
                                                longitudeList[j].toString())!));
                                      }
                                    }

                                    // 폴리라인 생성
                                    polyLines.add(
                                      Polyline(
                                        polylineId: UniqueKey().toString(),
                                        points: polyLatLngs,
                                        strokeColor: Color(firestoreState.startingPointInfo[i].loadColorValue),
                                        strokeOpacity: 0.8,
                                        strokeWidth: 7,
                                        strokeStyle: StrokeStyle.solid,
                                      ),
                                    );
                                  }

                                  // ==================== Last Marker ( 목적지 ) ====================
                                  // 마지막에 추가되는 마커는 중간지점 마커임...! ( 자동차 기준 먼져 적용하기 위해 /n 나눈 위도 경도 우선 적용
                                  markers.add(Marker(
                                    markerId: '-1',
                                    latLng: await LatLng(
                                        double.parse(
                                            addressModel.destination_point[0].mapy),
                                        double.parse(
                                            addressModel.destination_point[0].mapx)),
                                    markerImageSrc:
                                    '${firestoreState.destinationImg}',
                                    width: 40,
                                    height: 50,
                                  ));

                                  // ==================== CustomOverLay ( 마커 위 텍스트 : 목적지 ) ====================
                                  final destinationCustomOverlay = CustomOverlay(
                                    customOverlayId: UniqueKey().toString(),
                                    latLng: LatLng(
                                        double.parse(
                                            addressModel.destination_point[0].mapy),
                                        double.parse(
                                            addressModel.destination_point[0].mapx)),
                                    content:
                                    '<p style="background-color: white; padding: 8px; border-radius: 8px;">여기서 만나요!</p>',
                                    xAnchor: 0.4,
                                    yAnchor: 1.3,
                                    zIndex: 0,
                                  );

                                  customOverlays.add(destinationCustomOverlay);

                                  // ==================== Update Map ====================
                                  setState(() {
                                    // 마커가 보이도록 지도 재설정하기
                                    mapController.fitBounds(latLngs);
                                  });
                                }),
                                markers: markers.toList(),
                                polylines: polyLines.toList(),
                                customOverlays: customOverlays,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MapBottomSheetWidget(
                                destination: addressModel.destination_point[0],
                                startingPointList: addressModel.starting_point_list,
                                viewMaxCount: addressModel.starting_point_list.length + 2,
                              ),
                            ],
                          ),
                        ],
                      );
                    }
                }
              }
          }
        },
      ),
    );
  }
}
