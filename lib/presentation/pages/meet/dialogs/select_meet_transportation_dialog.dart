import 'package:flutter/material.dart';

import '../../../../domain/model/meet/meet_traffic_model.dart';
import '../screens/select_traffic_icon_screen.dart';
import '../widgets/common/select_move_step_widget.dart';
import '../widgets/common/text_content_area_widget.dart';
import '../widgets/common/title_text_area_widget.dart';

/**
 * 약속 이동 수단 선택 Dialog
 */
const double dialogBgRadius = 30;
const double textSize_title = 30;
const double textSize_content = 25;

class SelectMeetTransportationDialog extends StatefulWidget {
  const SelectMeetTransportationDialog({super.key});

  @override
  State<SelectMeetTransportationDialog> createState() =>
      _SelectMeetTransportationDialogState();
}

class _SelectMeetTransportationDialogState extends State<SelectMeetTransportationDialog> {

  List<MeetTrafficModel> trafficList = [
    MeetTrafficModel(traffic: 'car'),
    MeetTrafficModel(traffic: 'subway'),
    MeetTrafficModel(traffic: 'walk'),
  ];

  @override
  Widget build(BuildContext context) {
    String selectTraffic = "";
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(dialogBgRadius),
            ),
          ),
          TitleTextAreaWidget(content: '선택해주세요!', contentSize: textSize_title),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextContentAreaWidget(
              content: '약속장소로 이동할 교통수단을\n선택해주세요.',
              contentSize: textSize_content,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // 아이콘으로 교통 수단 선택한다.....
          SelectTrafficIconScreen(trafficList: trafficList,),

          // 선택한 대중교통이 뭔지 간단한 텍스트로 보여주기
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: SelectMoveStepWidget(
                backText: '취소',
                nextText: '출발지 입력',
                onBackPress: () {
                  print('선택 Dialog 종료');
                  Navigator.of(context).pop();
                },
                onNextPress: () {
                  print('출발지 입력 Dialog 이동');
                  for (int i = 0; i < trafficList.length; i++) {
                    if (trafficList[i].imageIndex == 1) {
                      selectTraffic = trafficList[i].traffic;
                    }
                  }

                  print('확인용 로그 -> $selectTraffic');
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
