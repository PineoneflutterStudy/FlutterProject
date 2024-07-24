import 'package:flutter/material.dart';

import '../dialog/login_popup.dart';

class EmptyPlanWidget extends StatelessWidget {
  const EmptyPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            showDialog(context: context, builder: (context) => LoginPopup());
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
            child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '개꿀트립',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' 과 함께 \n여행계획 세우러 떠나 볼까요~?',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
