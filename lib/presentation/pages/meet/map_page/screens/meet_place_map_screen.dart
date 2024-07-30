import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../empty_page/notifier/address_info_notifier.dart';

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

// ======================================================================
// Kakao Map Page
// ======================================================================
class MeetPlaceMapScreen extends StatelessWidget {
  const MeetPlaceMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addressInfoStateProvider.notifier).fetchAddressInfo();
    });
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
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(addressInfoStateProvider.select((p) => p.status));
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(addressInfoStateProvider);

          return KakaoMap(
            onMapCreated: ((controller) async { // 맵 생성 Callback
              mapController = controller;
              List<LatLng> latLngs = [];

              double latitudes = 0.0;
              double longitudes = 0.0;

              // 출발지 좌표 마커 생성
              for (int i = 0; i < state.addressList.length; i++) {
                latitudes += state.addressList[i].latitude;
                longitudes += state.addressList[i].longitude;

                markers.add(Marker(
                  markerId: UniqueKey().toString(),
                  latLng: await LatLng(state.addressList[i].latitude, state.addressList[i].longitude),
                ));
                latLngs.add(LatLng(state.addressList[i].latitude, state.addressList[i].longitude));
              }

              // 마지막에 추가되는 마커는 중간지점 마커임...! ( 자동차 기준 먼져 적용하기 위해 /n 나눈 위도 경도 우선 적용
              markers.add(Marker(
                markerId: '10',
                latLng: await LatLng(latitudes/3, longitudes/3),
              ));



              setState(() {
                // 마커가 보이도록 지도 재설정하기
                mapController.fitBounds(latLngs);

                _logger.i('값 확인 1 -> ${latitudes/3}');
                _logger.i('값 확인 2 -> ${longitudes/3}');
              });
            }),
            markers: markers.toList(),
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
