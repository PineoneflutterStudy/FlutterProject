import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../main/common/component/dialog/common_dialog.dart';
import '../notifiers/address_local/address_shprf_notifier.dart';
import '../notifiers/meet_firestore/meet_firestore_notifier.dart';
import '../notifiers/meet_firestore/meet_firestore_state.dart';
import '../notifiers/meet_mobility/meet_mobility_notifier.dart';
import '../notifiers/meet_mobility/meet_mobility_state.dart';
import '../notifiers/meet_tour_service/meet_tour_service_notifier.dart';
import '../notifiers/meet_tour_service/meet_tour_service_state.dart';
import '../widgets/common/map_loading_fail_widget.dart';
import '../widgets/common/map_loading_widget.dart';
import '../widgets/map_bottom_sheet_widget.dart';

/**
 * 1. 출발위치 입력받아 가운데 지점 구하기
 * 2. 입력한 출발지 마크 표시
 */

final Logger _logger = CustomLogger.logger;
late String apiKey = '';
late List<MeetAddressModel> addressList;

// ======================================================================
// Kakao Map Page
// ======================================================================
/// ## 약속장소 정하기 Screen ( Kakao Map Screen )
class MeetPlaceMapScreen extends StatelessWidget {
  const MeetPlaceMapScreen({required this.addresses, super.key});

  final List<MeetAddressModel> addresses;

  @override
  Widget build(BuildContext context) {
    addressList = addresses;
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
    apiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D');
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
  bool _hasFetchedData = false; // 데이터 호출 여부 체크

  late KakaoMapController mapController;

  @override
  void initState() {
    super.initState();
    _logger.i('[ __ContentMapViewState ] initState!!');
    // 진입 시 관광 정보 부터 조회...
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetFireStoreNotifierProvider.notifier).getLoginState(); // 로그인
      ref.read(meetFireStoreNotifierProvider.notifier).getMarkerImage(); // Firebase 이미지 정보 획득
      ref.read(meetTourServiceNotifierProvider.notifier).getTourLocationService(addressList); // 위치 기반 관광 정보 get
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          // 관광 정보 서비스 Api  사용
          final tourServiceState = ref.watch(meetTourServiceNotifierProvider);
          final tourServiceStatus = ref.watch(meetTourServiceNotifierProvider.select((p) => p.status));
          // 관광 정보 서비스 Api -> 카카오 모빌리티 자동차 길찾기 api 사용
          final mobilityState = ref.watch(meetMobilityNotifierProvider);
          final mobilityStatus = ref.watch(meetMobilityNotifierProvider.select((p) => p.status));
          // 로그인 상태 가져오기
          final loginStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.loginStatus));
          // 파이어베이스
          final firestoreState = ref.watch(meetFireStoreNotifierProvider); // 파이어베이스 - 마커에 사용할 이미지 정보 사용
          final firestoreStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.storageStatus));

          final shprfState  = ref.watch(addressShprfNotifierProvider);

          // 관광 정보 서비스 api - 위치 기반 관관광 정보 조회 상태
          _logger.i('[ __ContentMapViewState ] Tour Service Status -> ${tourServiceStatus}');
          switch (tourServiceStatus) {
            case MeetTourServiceStatus.initial:
            case MeetTourServiceStatus.loading:
              {
                return MapLoadingWidget();
              }
            case MeetTourServiceStatus.failure:
              {
                CommonUtils.showToastMsg('약속장를 찾지 못하였습니다.\n출발지를 재입력해주세요.');
                Navigator.of(context).pop(); // 종료.
                // TODO 뭘 리턴해줘야 하지.. 일단 비어있는 컨테이너 return
                return MapLoadingWidget();
              }
            case MeetTourServiceStatus.success:
              {
                if (!_hasFetchedData) { // 데이터가 아직 호출되지 않았다면
                  _hasFetchedData = true; // 호출 상태 변경
                  Future.delayed(Duration.zero, () {
                    ref.read(meetMobilityNotifierProvider.notifier).getAllRouteData(
                        addressList,
                        tourServiceState.tourDto[0].mapx,
                        tourServiceState.tourDto[0].mapy);
                  });

                  ref.read(addressShprfNotifierProvider.notifier).setDestination(tourServiceState.tourDto[0]);
                }

                _logger.i('[ __ContentMapViewState ] Kakao Mobility Status -> ${mobilityStatus}');
                switch (mobilityStatus) {
                  case MeetMobilityStatus.initial:
                  case MeetMobilityStatus.loading:
                    {
                      return MapLoadingWidget();
                    }
                  case MeetMobilityStatus.failure:
                    {
                      return MapLoadingFailWidget();
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

                                      switch (loginStatus) {
                                        case MeetLoginStatus.nonLogin:
                                        case MeetLoginStatus.failure:
                                        case MeetLoginStatus.initial:
                                          {
                                            // 로그인 상태가 아닐 시
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
                                                  ref.read(addressShprfNotifierProvider.notifier).resetAddress();
                                                  context.pop();
                                                  context.pop({
                                                    'update': false,
                                                  });
                                                });
                                          }
                                        case MeetLoginStatus.login:
                                          {
                                            // 로그인 시 -> 출발지 정보를 묻는 Dialog
                                            CommonDialog.confirmDialog (
                                                context: context,
                                                title: '약속장소 찾기 종료',
                                                content: '약속장소 찾기를 종료합니다.\n데이터를 저장 하시겠습니까?',
                                                btn1Text: '아니오',
                                                btn2Text: '네',
                                                onBtn1Pressed: (context) async {
                                                  ref.read(addressShprfNotifierProvider.notifier).resetAddress();
                                                  context.pop();
                                                  context.pop({
                                                    'update': false,
                                                  });
                                                },
                                                onBtn2Pressed: (context) async {
                                                  _logger.i('FireStore DB Data Save!');
                                                  ref.read(addressShprfNotifierProvider.notifier).saveLocationsData();
                                                  CommonUtils.showToastMsg('약속장소 정보를 저장합니다!');
                                                  context.pop();
                                                  context.pop({
                                                    'update': true,
                                                  });
                                                });
                                          }
                                      }
                                    },
                                    child: KakaoMap(
                                      onMapCreated: ((controller) async {
                                        // 맵 생성 Callback
                                        mapController = controller;
                                        List<LatLng> latLngs = [];

                                        // 출발지 좌표 마커 생성
                                        for (int i = 0; i < addressList.length; i++) {
                                          List<LatLng> polyLatLngs = [];
                                          // ==================== Markers ====================
                                          markers.add(Marker(
                                            markerId: UniqueKey().toString(),
                                            latLng: await LatLng(
                                                addressList[i].latitude,
                                                addressList[i].longitude),
                                            markerImageSrc:
                                            '${firestoreState.startingPointInfo[i].imagePath}',
                                            width: 40,
                                            height: 40,
                                          ));

                                          latLngs.add(LatLng(addressList[i].latitude,
                                              addressList[i].longitude));

                                          // ==================== CustomOverLay ( 마커 위 텍스트 : 출발지 ) ====================
                                          final startCustomOverlay = CustomOverlay(
                                            customOverlayId: UniqueKey().toString(),
                                            latLng: LatLng(addressList[i].latitude,
                                                addressList[i].longitude),
                                            content:
                                            '<p style="background-color: white; padding: 8px; border-radius: 8px;">${i + 1}번</p>',
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
                                          ref.read(addressShprfNotifierProvider.notifier).addAddressInput(
                                              MeetAddressModel(
                                                  index: addressList[i].index,
                                                  address: addressList[i].address,
                                                  latitude: addressList[i].latitude,
                                                  longitude: addressList[i].longitude,
                                                  totalDuration: mobilityState.directionsModel[i].duration,
                                                  totalDistance: mobilityState.directionsModel[i].distance
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
                                                  tourServiceState.tourDto[0].mapy),
                                              double.parse(
                                                  tourServiceState.tourDto[0].mapx)),
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
                                                  tourServiceState.tourDto[0].mapy),
                                              double.parse(
                                                  tourServiceState.tourDto[0].mapx)),
                                          content:
                                          '<p style="background-color: white; padding: 8px; border-radius: 8px;">${tourServiceState.tourDto[0].title}</p>',
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
                                      destination: tourServiceState.tourDto[0],
                                      startingPointList: shprfState.addressList,
                                      viewMaxCount: addressList.length + 2,
                                      markerModel: firestoreState.startingPointInfo,
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }
                      }
                    }
                }
              }
          }
        },
      ),
    );
  }
}
