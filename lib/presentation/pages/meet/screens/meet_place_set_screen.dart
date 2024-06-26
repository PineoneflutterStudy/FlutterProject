import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  const MeetPlaceSetScreen({super.key});

  @override
  State<MeetPlaceSetScreen> createState() => _MeetPlaceSetScreenState();
}

class _MeetPlaceSetScreenState extends State<MeetPlaceSetScreen> {
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
