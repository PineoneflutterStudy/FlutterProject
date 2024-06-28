import 'package:flutter/material.dart';

class SelectMoveStepWidget extends StatelessWidget {
  const SelectMoveStepWidget(
      {super.key,
      required this.backText,
      required this.nextText,
      required this.onBackPress,
      required this.onNextPress});

  final String backText, nextText;
  final void Function()? onBackPress;
  final void Function()? onNextPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onBackPress,
              icon: Icon(Icons.arrow_back_ios_sharp),
            ),
            Text(
              backText,
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              nextText,
              style: TextStyle(fontSize: 28),
            ),
            IconButton(
                onPressed: onNextPress,
                icon: Icon(Icons.arrow_forward_ios_sharp)),
          ],
        )
      ],
    );
  }
}
