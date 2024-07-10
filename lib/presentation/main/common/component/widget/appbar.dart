import 'package:flutter/material.dart';

/**
 * 공통으로 사용할 App Bar Widget
 * Title만 전달받아 set
 */
class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double appbar_height = 70;
  const MainAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          )),
    );
  }

  // preferredSize 설정 (필수)
  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
