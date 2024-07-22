import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
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
String _accessToken = '';

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
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(authType.bgColor)),
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

  Future<void> launchNaverLogin() async {
    await FlutterNaverLogin.logIn().then(
      (value) async {
        switch (value.status) {
          case NaverLoginStatus.loggedIn:
            NaverAccessToken result = await FlutterNaverLogin.currentAccessToken;
            _accessToken = result.accessToken;
            _logger.i('$_tag Naver Login Successed');
            _logger.d('$_tag accessToken = $_accessToken');

          case NaverLoginStatus.cancelledByUser:
            _logger.i('$_tag Naver Login Canceled');

          case NaverLoginStatus.error:
            _logger.e('$_tag Naver Login Failed, error = ${value.errorMessage}');
        }
      },
    );
  }

  Future<void> launchKakaoLogin() async {
    // 카카오톡 실행 가능 여부 확인
    // 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    if (await isKakaoTalkInstalled()) {
      try {
        OAuthToken result = await UserApi.instance.loginWithKakaoTalk();
        _accessToken = result.accessToken;
        _logger.i('$_tag KakaoTalk Login Successed');
        _logger.d('$_tag result = $result');
        _logger.d('$_tag accessToken = $_accessToken');
      } catch (error) {
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          _logger.i('$_tag KakaoTalk Login Canceled');
          return;
        }

        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        _logger.e('$_tag KakaoTalk Login Failed, error = $error');
        await loginWithKakaoAccount();
      }
    } else {
      await loginWithKakaoAccount();
    }
  }

  Future<void> loginWithKakaoAccount() async {
    try {
      OAuthToken result = await UserApi.instance.loginWithKakaoAccount();
      _accessToken = result.accessToken;
      _logger.i('$_tag KakaoAccount Login Successed');
      _logger.d('$_tag result = $result');
      _logger.d('$_tag accessToken = $_accessToken');
    } catch (error) {
      _logger.e('$_tag KakaoAccount Login Failed, error = $error');
    }
  }
}
