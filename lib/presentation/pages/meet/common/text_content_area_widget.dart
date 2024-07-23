import 'package:flutter/material.dart';

class TextContentAreaWidget extends StatelessWidget {
  const TextContentAreaWidget({super.key, required this.content, required this.contentSize});

  final String content;
  final double contentSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
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

