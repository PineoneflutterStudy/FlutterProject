import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyMeetWidget extends StatelessWidget {
  const EmptyMeetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              print('약속잡기');
            },
            icon: Icon(
              Icons.add_circle_sharp,
              color: Colors.amberAccent,
              size: 40,
            )),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            '정해진 약속이 없습니다\n버튼을 입력해서 약속을 정해봐요!',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
