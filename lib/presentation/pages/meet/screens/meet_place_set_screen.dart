import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../dialogs/select_meet_start_position_dialog.dart';

/**
 * 약속장소 정하기 Screen
 *
 * Description
 * 1. 친구 초대
 * 2. 출발 위치 각자 입력하기
 * 3. 출발위치 입력받아 가운데 지점 구하기
 * 4. 최초 지점 마크표시
 * 5. 좀 더 합당한 위치를 위해 지도에서 선택 가능하도록
 */

class MeetPlaceSetScreen extends StatefulWidget {
  @override
  State<MeetPlaceSetScreen> createState() => _MeetPlaceSetScreenState();
}

class _MeetPlaceSetScreenState extends State<MeetPlaceSetScreen> {
  bool isPosition = false; // 출발지 입력 시....

  @override
  void initState() {
    super.initState();
    // 최초 진입 시 하단에 생성되는 주소 입력 Dialog / 뒤 메인 화면은 지도화면
    WidgetsBinding.instance.addPostFrameCallback((_) {
      selectPositionDialog(context);
    });
  }

  void selectPositionDialog(BuildContext context) {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        isDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future(() => true);
            },
            child: SelectMeetStartPositionDialog(),
          );
        }).whenComplete(() {
      if (isPosition) {
        showToast('아예 뒤로...');
        Navigator.of(context).pop();
      } else {
        showToast('주소입력착만 뒤로...');
      }
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
      body: Center(
        child: Text(
          '약속장소를\n정해봐요!',
          style: TextStyle(
            fontSize: 30,
          ),
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
