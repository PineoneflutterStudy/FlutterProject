import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 공통으로 사용할 App Bar Widget
 *
 * Title만 전달받아 set
 */
class MainAppbar extends StatelessWidget implements  PreferredSizeWidget{
  final String title;
  final double appbar_height = 50;
  const MainAppbar({super.key, required this.title});

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
