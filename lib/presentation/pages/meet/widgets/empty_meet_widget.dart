import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dialogs/select_meet_transportation_dialog.dart';

class EmptyMeetWidget extends StatelessWidget {
  const EmptyMeetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          // 제스처 감지
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SelectMeetTransportationDialog(),
            );
          },
          child: Icon(
            Icons.add_circle_sharp,
            color: Colors.amberAccent,
            size: 40,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            '정해진 약속이 없네요?\n버튼을 입력해서 약속을 정해봐요!',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
