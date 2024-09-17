import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

/**
 * 축제 카카오 맵 위치 표시 Widget
 */
class FestivalKakaoMap extends StatefulWidget {
  double latitude;
  double longitude;

  FestivalKakaoMap(this.latitude, this.longitude);

  @override
  State<StatefulWidget> createState() {
    return _FestivalKakaoMap(latitude, longitude);
  }
}

class _FestivalKakaoMap extends State<FestivalKakaoMap> {
  double latitude;
  double longitude;

  _FestivalKakaoMap(this.latitude, this.longitude);

  late KakaoMapController mapController;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KakaoMap(
        onMapCreated: ((controller) async {
          var latLng = await LatLng(latitude, longitude);
          mapController = controller;

          markers.add(Marker(
            markerId: UniqueKey().toString(),
            latLng: latLng,
          ));

          setState(() {
            // 지도 위치 재 설정
            mapController.fitBounds([latLng]);
          });
        }),
        markers: markers.toList(),
        // zoom level
        minLevel: 3,
      ),
    );
  }
}
