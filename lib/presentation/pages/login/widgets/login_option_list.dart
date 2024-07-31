import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';
import 'login_option_item.dart';

//==============================================================================
//  Fields
//==============================================================================
const String _tag = '[Login]';

/// ## 로그인 옵션 목록
/// 구글, 네이버, 카카오, 이메일 로그인을 지원한다.
///
/// author [Eogeum@naver.com]
class LoginOptionList extends StatelessWidget {
  const LoginOptionList();

  @override
  Widget build(BuildContext context) {
    final authTypeList = AuthType.values;
    return Column(
      children: [
        SizedBox(),
        // Image.asset(), //eff 로고 이미지 추가될 예정
        SizedBox(),

        Expanded(
            child: //eff Expanded 요건 사이즈 확정되면 삭제
                ListView.builder(
          itemCount: authTypeList.length,
          itemBuilder: (context, index) => LoginOptionItem(authTypeList[index]),
        ))
      ],
    );
  }

//==============================================================================
//  Layout
//==============================================================================

//==============================================================================
//  Methods
//==============================================================================
  /// 인증 타입 별로 로그인 시도하고 파이어베이스에 등록
  void onPressedOptionItem(AuthType authType) {
    switch (authType) {
      case AuthType.google:
        launchGoogleLogin();
      case AuthType.naver:
        launchNaverLogin();
      case AuthType.kakao:
        launchKakaoLogin();
      case AuthType.email:
        launchSignInPage();
    }
  }

  Future<void> launchGoogleLogin() async {
    try {
      GoogleSignInAccount? account = await GoogleSignIn().signIn();

      if (account == null) {
        CustomLogger.logger.e('$_tag Google Login Failed, account == NULL');
        return;
      }

      // 웹인 경우 scope 접근 확인 필요
      // if (kIsWeb) {
      //   isAuthorized = await _googleSignIn.canAccessScopes(scopes);
      // }

      // 구글 인증 정보 가져오기
      final authentication = await account.authentication;
      CustomLogger.logger.d('$_tag Google Login Successed - authentication = $authentication');

      // 인증 정보로 인증서 생성
      final credential = GoogleAuthProvider.credential(
          idToken: authentication.idToken, accessToken: authentication.accessToken);

      // 인증서로 파이어베이스 로그인
      FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      CustomLogger.logger.e('$_tag Google Login Failed, error = $error');
    }
  }

  Future<void> launchNaverLogin() async {
    await FlutterNaverLogin.logIn().then((value) async {
      switch (value.status) {
        case NaverLoginStatus.loggedIn:
          NaverAccessToken result = await FlutterNaverLogin.currentAccessToken;
          CustomLogger.logger.d('$_tag Naver Login Successed - result = $result');

        case NaverLoginStatus.cancelledByUser:
          CustomLogger.logger.i('$_tag Naver Login Canceled');

        case NaverLoginStatus.error:
          CustomLogger.logger.e('$_tag Naver Login Failed, error = ${value.errorMessage}');
      }
    }).catchError((error) {
      CustomLogger.logger.e('$_tag Naver Login Failed, error = $error');
    });
  }

  Future<void> launchKakaoLogin() async {
    // 카카오톡 실행 가능 여부 확인
    // 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    if (await isKakaoTalkInstalled()) {
      try {
        OAuthToken result = await UserApi.instance.loginWithKakaoTalk();
        CustomLogger.logger.d('$_tag KakaoTalk Login Successed - result = $result');
      } catch (error) {
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException &&
            (error.code == 'CANCELED' || error.code == 'access_denied')) {
          CustomLogger.logger.i('$_tag KakaoTalk Login Canceled');
          return;
        }

        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        CustomLogger.logger.e('$_tag KakaoTalk Login Failed, error = $error');
        await loginWithKakaoAccount();
      }
    } else {
      await loginWithKakaoAccount();
    }
  }

  Future<void> loginWithKakaoAccount() async {
    try {
      OAuthToken result = await UserApi.instance.loginWithKakaoAccount();
      CustomLogger.logger.d('$_tag KakaoAccount Login Successed - result = $result');
    } catch (error) {
      CustomLogger.logger.e('$_tag KakaoAccount Login Failed, error = $error');
    }
  }

  void launchSignInPage() {
    CustomLogger.logger.i('$_tag launchSignInPage()');
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => SignInPage(),
    //     fullscreenDialog: true,
    //   ),
    // );
  }
}
