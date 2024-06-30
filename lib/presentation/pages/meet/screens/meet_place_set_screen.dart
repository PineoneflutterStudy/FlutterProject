import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../dialogs/select_meet_start_position_dialog.dart';
import '../provider/start_position_bottom_sheet_provider.dart';

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
  @override
  void initState() {
    super.initState();
    // 최초 진입 시 하단에 생성되는 주소 입력 Dialog / 뒤 메인 화면은 지도화면
    /*selectPositionDialog(context);*/
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
          return Consumer<StartPositionBottomSheetProvider>(
              builder: (context, provider, child) {
                return WillPopScope(
                  onWillPop: () async {
                    return provider.canPop;
                  },
                  child: SelectMeetStartPositionDialog(),
                );
              });
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
