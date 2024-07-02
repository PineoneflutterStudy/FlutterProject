import 'package:flutter/material.dart';

import '../../main/common/appbar.dart';
import '../login/login_page.dart';

/**
 * 마이페이지 화면
 *
 *
 * @author Eogeum@naver.com
 * @since 2024-07-02
 */
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: MainAppbar(title: '마이페이지'), body: UserBody());

  // 유저 페이지
  Center UserBody() => Center(child: LoginBtn());

  // 로그인 버튼
  GestureDetector LoginBtn() => GestureDetector(
      child: Text('로그인',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      onTap: () {
        launchLoginPage();
      });

  //
  void launchLoginPage() {
    // Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
        fullscreenDialog: true,
      ),
    );
  }
}
