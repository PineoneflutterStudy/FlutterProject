import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../common/map_loading_widget.dart';
import '../notifier/meet_place_map_notifier.dart';
import '../notifier/meet_place_map_state.dart';

/**
 * 약속장소 정하기 Screen
 *
 * Description
 * 1. 출발위치 입력받아 가운데 지점 구하기
 * 2. 입력한 출발지 마크 표시
 * 3. 구하기 결과를 여러개 제시할 수 있도록
 * 4. Pix된 계획 친구들에게 링크 보내기
 *  - 하고싶은건 1번친구 링크 보내기 -> 카카오톡 친구 확인 -> 1번 친구에 해당하는 친구에게 Url링크로 바로 길찾기에 해당 루트 입력되도록.....
 */

final Logger _logger = CustomLogger.logger;
late String apiKey = '';
late List<AddressModel> addressList;
// 라인 컬러 리스트
final List<Color> lineColors = [
  Colors.green,
  Colors.red,
  Colors.blue,
  Colors.black,
];

// ======================================================================
// Kakao Map Page
// ======================================================================
class MeetPlaceMapScreen extends StatelessWidget {
  const MeetPlaceMapScreen({required this.addresses, super.key});

  final List<AddressModel> addresses;

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
    FlutterConfig.loadEnvVariables();
    apiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY');
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetPlaceStateProvider.notifier).getMapInfo(addressList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final apiState = ref.watch(meetPlaceStateProvider);

          return apiState.status == MeetPlaceMapStatus.loading
              ? MapLoadingWidget()
              : KakaoMap(
            onMapCreated: ((controller) async {
              // 맵 생성 Callback
              mapController = controller;
              List<LatLng> latLngs = [];

              /// TODO Firebase Storage에 접근하여 이미지 가져오도록 변경...
              // 출발지 좌표 마커 생성
              for (int i = 0; i < addressList.length; i++) {
                List<LatLng> polyLatLngs = [];
                // ==================== Markers ====================
                markers.add(Marker(
                  markerId: UniqueKey().toString(),
                  latLng: await LatLng(
                      addressList[i].latitude, addressList[i].longitude),
                  markerImageSrc:
                  '${apiState.startingPointImg}',
                  width: 40,
                  height: 40,
                ));

                latLngs.add(LatLng(addressList[i].latitude, addressList[i].longitude));

                // ==================== CustomOverLay ( 마커 위 텍스트 : 출발지 ) ====================
                final startCustomOverlay = CustomOverlay(
                  customOverlayId: UniqueKey().toString(),
                  latLng: LatLng(addressList[i].latitude, addressList[i].longitude),
                  content:
                  '<p style="background-color: white; padding: 8px; border-radius: 8px;">${i + 1}번</p>',
                  xAnchor: 0.4,
                  yAnchor: 0.1,
                  zIndex: 0,
                );

                customOverlays.add(startCustomOverlay);

                // ==================== PolyLine ====================
                var latitudeList = jsonDecode(apiState.directionsDto[i].latitudePaths);
                var longitudeList = jsonDecode(apiState.directionsDto[i].longitudePaths);

                // DirectionDto의 경도 리스트 길이만큼 실행...
                for (int j = 0; j < latitudeList.length; j++) {
                  if (j % 2 == 0) { // index 가 짝수 일때만 추가..
                    polyLatLngs.add(
                        LatLng(double.tryParse(latitudeList[j].toString())!,
                        double.tryParse(longitudeList[j].toString())!));
                  } else if (j == latitudeList.length - 1) {
                    polyLatLngs.add(
                        LatLng(double.tryParse(latitudeList[j].toString())!,
                            double.tryParse(longitudeList[j].toString())!));
                  }
                }

                // 폴리라인 생성
                polyLines.add(
                  Polyline(
                    polylineId: UniqueKey().toString(),
                    points: polyLatLngs,
                    strokeColor: lineColors[i],
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
                    double.parse(apiState.tourDto[0].mapy),
                    double.parse(apiState.tourDto[0].mapx)),
                markerImageSrc:
                '${apiState.destinationImg}',
                width: 40,
                height: 50,
              ));

              // ==================== CustomOverLay ( 마커 위 텍스트 : 목적지 ) ====================
              final destinationCustomOverlay = CustomOverlay(
                customOverlayId: UniqueKey().toString(),
                latLng: LatLng(
                    double.parse(apiState.tourDto[0].mapy),
                    double.parse(apiState.tourDto[0].mapx)),
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
          );
        },
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.white,
    fontSize: 15,
    textColor: Colors.black,
    toastLength: Toast.LENGTH_SHORT,
  );
}
