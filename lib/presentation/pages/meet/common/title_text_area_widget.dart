import 'package:flutter/material.dart';

/// ## 간단한 Title를 출력하는 Area Widget ( mainAxisAlignment - center )
/// ### @param
/// #### 1. content - 출력할 content(String)
/// #### 2. contentSize - FontSize(double)
class TitleTextAreaWidget extends StatelessWidget {
  const TitleTextAreaWidget({super.key, required this.content, required this.contentSize});

  final String content;
  final double contentSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              content,
              style: TextStyle(fontSize: contentSize),
            ),
          ],
        ),
      ],
    );
  }
}
