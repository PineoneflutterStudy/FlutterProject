import 'package:flutter/material.dart';

final customTheme = ThemeData(
  //light, dart 테마 설정가능
    colorScheme: const ColorScheme.light(
        primary: Colors.indigo, // appbar
        secondary: Colors.green, // button같은거
        tertiary: Colors.yellow // 하이라이트 키..?같은 경우
    ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)
    )
);