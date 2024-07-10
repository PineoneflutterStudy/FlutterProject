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
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onBackPress,
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_sharp),
              Text(
                backText,
                style: TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onNextPress,
          child: Row(
            children: [
              Text(
                nextText,
                style: TextStyle(fontSize: 28),
              ),
              Icon(Icons.arrow_forward_ios_sharp),
            ],
          ),
        ),
      ],
    );
  }
}
