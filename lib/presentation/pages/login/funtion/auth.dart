import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../../core/utils/logger.dart';

const String _tag = '[Login]';

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
      OAuthToken authToken = await UserApi.instance.loginWithKakaoTalk();
      CustomLogger.logger.d('$_tag KakaoTalk Login Successed - authToken = $authToken');
      onKakaoLoginSuccessed(authToken);
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
    OAuthToken authToken = await UserApi.instance.loginWithKakaoAccount();
    CustomLogger.logger.d('$_tag KakaoAccount Login Successed - authToken = $authToken');
    onKakaoLoginSuccessed(authToken);
  } catch (error) {
    CustomLogger.logger.e('$_tag KakaoAccount Login Failed, error = $error');
  }
}

/// 카카오 로그인 성공 후 파이어베이스 로그인
void onKakaoLoginSuccessed(OAuthToken authToken) {
  // 인증 정보로 인증서 생성
  final provider = OAuthProvider('oidc.kakao');
  final credential =
      provider.credential(accessToken: authToken.accessToken, idToken: authToken.idToken);

  // 인증서로 파이어베이스 로그인
  FirebaseAuth.instance.signInWithCredential(credential);
}