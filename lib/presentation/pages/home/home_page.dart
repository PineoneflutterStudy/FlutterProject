import 'package:flutter/material.dart';

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

class HomeAppbar extends StatelessWidget implements  PreferredSizeWidget{
  final String title;
  final double appbar_height = 50;
  const HomeAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5, // 하단 음영
          centerTitle: true,
          title: Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)),
    );
  }

  // preferredSize 설정 (필수)
  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}