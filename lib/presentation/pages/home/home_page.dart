import 'package:flutter/material.dart';

import '../appbar/home_appbar.dart';

// 홈 화면
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(title: '개꿀트립'),
      body: Center(
          child: Text(
        'home_page',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
