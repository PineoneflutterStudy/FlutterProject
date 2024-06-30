import 'package:flutter/material.dart';

/**
 * 2Step
 * 주소 찾기 & 현재 내위치 입력하는 dialog
 */

class SelectMeetStartPositionDialog extends StatefulWidget {
  const SelectMeetStartPositionDialog({super.key});

  @override
  State<SelectMeetStartPositionDialog> createState() =>
      _SelectMeetStartPositionDialogState();
}

class _SelectMeetStartPositionDialogState
    extends State<SelectMeetStartPositionDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Center(
                child: Text(
              '출발지 입력',
              style: TextStyle(fontSize: 30),
            )),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
