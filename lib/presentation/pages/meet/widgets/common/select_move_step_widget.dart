import 'package:flutter/material.dart';

/// ## 좌, 우 화살표 및 Text 가 spaceBetween 으로 위치한 widget
// < [ Text ]       [ Text ] >  버튼 Widget
/// ### @param
/// #### 1. backText - [ 좌 ] 화살표 동작에 대한 Text
/// #### 2. nextText - [ 우 ] 화살표 동작에 대한 Text
/// #### 3. onBackPress - [ 좌 ] 화살표 동작 ( 사용 화면에서 구현 )
/// #### 4. onNextPress - [ 우 ] 화살표 동작 ( 사용 화면에서 구현 )
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
