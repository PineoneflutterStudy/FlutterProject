import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/model/display/login/auth_type.dart';

/**
 * 로그인 화면
 *
 * 구글, 네이버, 카카오, (이메일?) 로그인을 지원한다.
 *
 * @author Eogeum@naver.com
 * @since 2024-07-02
 */

//==============================================================================
//  Constants
//==============================================================================
final String _tag = '[Login]';
final Logger _logger = CustomLogger.logger;

final List<AuthType> authTypeList = <AuthType>[
  AuthType.google,
  AuthType.naver,
  AuthType.kakao
];

//==============================================================================
//  Fields
//==============================================================================
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: loginBody(),
      );

//==============================================================================
//  Layout
//==============================================================================
  // 로그인 바디
  Column loginBody() => Column(
        children: [
          SizedBox(),
          // Image.asset(), //eff 로고 이미지 추가될 예정
          SizedBox(),

          Expanded(
              child: //eff Expanded 요건 사이즈 확정되면 삭제
                  ListView.builder(
            itemCount: authTypeList.length,
            itemBuilder: (context, index) => authListItem(authTypeList[index]),
          ))
        ],
      );

  // 인증 목록 아이템
  Widget authListItem(AuthType authType) => TextButton.icon(
        icon: Image.asset(
          authType.iconPath,
          width: 36,
          height: 36,
        ),
        label: Text(
          '${authType.name} 로그인',
          style: TextStyle(fontSize: 36, color: authType.fontColor),
        ),
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(authType.bgColor)),
        onPressed: () => onPressedAuthListItem(authType),
      );

//==============================================================================
//  Methods
//==============================================================================
  void onPressedAuthListItem(AuthType authType) {
    _logger.i('$_tag onPressedAuthListItem()');
    switch (authType) {
      case AuthType.google:
        launchGoogleLogin();
      case AuthType.naver:
        launchNaverLogin();
      case AuthType.kakao:
        launchKakaoLogin();
    }
  }

  void launchGoogleLogin() {
    _logger.i('$_tag launchGoogleLogin()');
  }

  void launchNaverLogin() {
    _logger.i('$_tag launchNaverLogin()');
  }

  void launchKakaoLogin() {
    _logger.i('$_tag launchKakaoLogin()');
  }
}
