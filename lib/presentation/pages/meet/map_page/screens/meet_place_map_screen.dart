import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../domain/model/display/home/location_list_model.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../empty_page/notifier/address_info_notifier.dart';
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

    /*ref.read(meetPlaceStateProvider.notifier).getTourLocationInfo(makeRequestModel());*/

    /*WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetPlaceStateProvider.notifier).getTourLocationInfo(model);
    });*/
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
  Set<Marker> markers = {};
  late KakaoMapController mapController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetPlaceStateProvider.notifier).getTourLocationInfo(makeRequestModel());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final apiState = ref.watch(meetPlaceStateProvider);

          return apiState.status == MeetPlaceMapStatus.loading
              ? const Center(child: CircularProgressIndicator())
              : KakaoMap(
                  onMapCreated: ((controller) async {
                    // 맵 생성 Callback
                    mapController = controller;
                    List<LatLng> latLngs = [];

                    // 출발지 좌표 마커 생성
                    for (int i = 0; i < addressList.length; i++) {
                      markers.add(Marker(
                        markerId: UniqueKey().toString(),
                        latLng: await LatLng(
                            addressList[i].latitude, addressList[i].longitude),
                      ));

                      latLngs.add(LatLng(
                          addressList[i].latitude, addressList[i].longitude));
                    }

                    // 마지막에 추가되는 마커는 중간지점 마커임...! ( 자동차 기준 먼져 적용하기 위해 /n 나눈 위도 경도 우선 적용
                    markers.add(Marker(
                      markerId: '-1',
                      latLng: await LatLng(
                          double.parse(apiState.tourDto[0].mapy),
                          double.parse(apiState.tourDto[0].mapx)),
                    ));

                    setState(() {
                      // 마커가 보이도록 지도 재설정하기
                      mapController.fitBounds(latLngs);
                    });
                  }),
                  markers: markers.toList(),
                );
        },
      ),
    );
  }
}

LocationListModel makeRequestModel() {
  double latitudes = 0.0;
  double longitudes = 0.0;

  for (int i = 0; i < addressList.length; i++) {
    latitudes += addressList[i].latitude;
    longitudes += addressList[i].longitude;
  }

  return LocationListModel(
      serviceKey: apiKey,
      numOfRows: TourApiRequestData().emptyIntData,
      pageNo: TourApiRequestData().emptyIntData,
      MobileOS: Platform.isAndroid
          ? TourApiRequestData().osList[0]
          : TourApiRequestData().osList[1],
      MobileApp: TourApiRequestData().appName,
      type: TourApiRequestData().responseType,
      listYN: TourApiRequestData().emptyData,
      arrange: TourApiRequestData().arrangeList[1],
      mapX: '${longitudes / addressList.length}',
      mapY: '${latitudes / addressList.length}',
      radius: TourApiRequestData().radiusList[6],
      contentTypeId: TourApiRequestData().contentTypes[7],
      modifiedtime: TourApiRequestData().emptyData);
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
