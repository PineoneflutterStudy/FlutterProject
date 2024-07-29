import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../core/utils/logger.dart';
import 'widgets/login_option_list.dart';

//==============================================================================
//  Fields
//==============================================================================
const String _tag = '[Login]';

final GoogleSignIn _googleSignIn = GoogleSignIn(clientId: FlutterConfig.get('GOOGLE_CLIENT_ID'));

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
  void initState() {
    super.initState();

    _googleSignIn.onCurrentUserChanged.listen((account) async {
      if (account == null) {
        CustomLogger.logger.e('$_tag Google Login Failed, account == NULL');
        return;
      }

      // 웹인 경우 scope 접근 확인 필요
      // if (kIsWeb) {
      //   isAuthorized = await _googleSignIn.canAccessScopes(scopes);
      // }

      GoogleSignInAuthentication result = await account.authentication;
      CustomLogger.logger.i('$_tag Google Login Successed - result = $result');
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: LoginOptionList(_googleSignIn),
      );

//==============================================================================
//  Methods
//==============================================================================
}
