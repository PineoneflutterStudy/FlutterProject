import 'package:flutter/material.dart';

/**
 * 로그인 화면
 *
 * 구글, 네이버, 카카오, (이메일?) 로그인을 지원한다.
 *
 * @author Eogeum@naver.com
 * @since 2024-07-02
 */
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: LoginBody(),
      );

  Center LoginBody() => Center();
}
