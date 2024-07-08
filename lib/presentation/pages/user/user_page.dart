import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/logger.dart';
import '../../main/common/appbar.dart';
import '../login/login_page.dart';

/**
 * 마이페이지 화면
 *
 *
 * @author Eogeum@naver.com
 * @since 2024-07-02
 */
//==============================================================================
//  Constants
//==============================================================================
final String _tag = '[User]';
final Logger _logger = CustomLogger.logger;

//==============================================================================
//  Fields
//==============================================================================

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: MainAppbar(title: '마이페이지'), body: userBody());

//==============================================================================
//  Layout
//==============================================================================
  // 마이페이지 바디
  Center userBody() => Center(child: loginBtn());

  // 로그인 버튼
  GestureDetector loginBtn() => GestureDetector(
      child: Text('로그인',
          style: TextStyle(fontSize: 30)),
      onTap: () {
        launchLoginPopup();
      });

//==============================================================================
//  Methods
//==============================================================================
  // 로그인 화면 실행
  void launchLoginPopup() {
    _logger.i('$_tag launchLoginPopup()');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
        fullscreenDialog: true,
      ),
    );
  }
}
