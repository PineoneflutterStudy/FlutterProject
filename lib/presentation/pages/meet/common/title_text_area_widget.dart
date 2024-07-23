import 'package:flutter/material.dart';

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
