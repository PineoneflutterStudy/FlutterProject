import 'package:flutter/material.dart';

import 'widgets/login_option_list.dart';

//==============================================================================
//  Fields
//==============================================================================
const String _tag = '[Login]';

/// ## 로그인 화면
///
/// author [Eogeum@naver.com]
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: LoginOptionList(),
      );

//==============================================================================
//  Methods
//==============================================================================
}
