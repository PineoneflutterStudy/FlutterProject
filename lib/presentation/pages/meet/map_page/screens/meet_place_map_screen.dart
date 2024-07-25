<<<<<<<< HEAD:lib/presentation/pages/meet/screens/meet_place_map_screen.dart
========
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

import '../../../../../domain/model/display/meet/address_model.dart';

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

class MeetPlaceMapScreen extends StatelessWidget {
  const MeetPlaceMapScreen({super.key});

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
      body: Container(
        child: KakaoMap(
          /*center: LatLng(viewModel.addressList[0].latitude, viewModel.addressList[0].longitude),
                markers: [],*/
        ),
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
>>>>>>>> 15890ae ([김경태][KKULTRIP-60] 중간 지점 찾기 개발):lib/presentation/pages/meet/map_page/screens/meet_place_map_screen.dart
