import 'dart:convert';
import 'dart:math';

import 'package:app_links/app_links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/logger.dart';

const String _tag = '[Login]';

Future<void> launchGoogleLogin() async {
  try {
    final GoogleSignInAccount? account = await GoogleSignIn().signIn();

    if (account == null) {
      CustomLogger.logger.e('$_tag Error - Google login failed. account == NULL');
      return;
    }

    // 웹인 경우 scope 접근 확인 필요
    // if (kIsWeb) {
    //   isAuthorized = await _googleSignIn.canAccessScopes(scopes);
    // }

    // 구글 인증 정보 가져오기
    final GoogleSignInAuthentication authentication = await account.authentication;
    CustomLogger.logger.i('$_tag Google login successed.');

    // 인증 정보로 인증서 생성
    final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: authentication.idToken, accessToken: authentication.accessToken);

    // 인증서로 파이어베이스 로그인
    FirebaseAuth.instance.signInWithCredential(credential);
  } catch (error) {
    CustomLogger.logger.e('$_tag Google login failed. error = $error');
  }
}

/// ## 네이버 로그인 결과를 받기 위한 앱 링크 초기화
/// [launchNaverLogin]의 결과를 받기 위해선 반드시 호출하는 위젯의 [StatefulWidget.initState]에서 호출이 필요하다.
Future<void> initAppLinks() async {
  final AppLinks appLinks = AppLinks();
  final Uri? initialLink = await appLinks.getInitialLink();
  if (initialLink != null) {
    _onReceiveAppLinks(initialLink);
  }

  appLinks.uriLinkStream.listen((uri) {
    _onReceiveAppLinks(uri);
  }, onError: (a, b) {
    CustomLogger.logger.e('$_tag Error - Naver login failed. cause = $a / $b');
  });
}

Future<void> _onReceiveAppLinks(Uri uri) async {
  CustomLogger.logger.i('$_tag App links received. uri = ${uri.toString()}');

  if (uri.authority == 'login-callback') {
    // 구글 클라우드에서 생성한 커스텀 토큰 가져오기
    final String firebaseToken = uri.queryParameters['firebaseToken'] ?? '';
    if (firebaseToken.isEmpty) {
      CustomLogger.logger.e('$_tag Error - Naver login failed. firebaseToken.isEmpty == TRUE');
      return;
    }

    CustomLogger.logger.i('$_tag Naver login successed.');

    // 커스텀 토큰으로 파이어베이스 로그인
    await FirebaseAuth.instance.signInWithCustomToken(firebaseToken);
  }
}

Future<void> launchNaverLogin() async {
  CustomLogger.logger.i('$_tag launchNaverLogin()');

  final String clientId = FlutterConfig.get('NAVER_CLIENT_ID');
  final String redirectUri =
      'https://us-central1-gaekkul-project.cloudfunctions.net/naverLoginCallback';
  // state is random nonce used for security
  final String state = base64Url.encode(List<int>.generate(16, (_) => Random().nextInt(255)));

  final Uri url = Uri.parse(
      'https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=$clientId&redirect_uri=$redirectUri&state=$state');
  await launchUrl(url);
}

Future<void> launchKakaoLogin() async {
  // 카카오톡 실행 가능 여부 확인
  // 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
  if (await isKakaoTalkInstalled()) {
    try {
      final OAuthToken authToken = await UserApi.instance.loginWithKakaoTalk();
      CustomLogger.logger.i('$_tag KakaoTalk login successed.');
      onKakaoLoginSuccessed(authToken);
    } catch (error) {
      // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
      // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
      if (error is PlatformException &&
          (error.code == 'CANCELED' || error.code == 'access_denied')) {
        CustomLogger.logger.i('$_tag KakaoTalk login canceled.');
        return;
      }

      // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
      CustomLogger.logger.e('$_tag Error - KakaoTalk login failed. error = $error');
      await loginWithKakaoAccount();
    }
  } else {
    await loginWithKakaoAccount();
  }
}

Future<void> loginWithKakaoAccount() async {
  try {
    final OAuthToken authToken = await UserApi.instance.loginWithKakaoAccount();
    CustomLogger.logger.i('$_tag KakaoAccount login successed.');
    onKakaoLoginSuccessed(authToken);
  } catch (error) {
    CustomLogger.logger.e('$_tag KakaoAccount login failed. error = $error');
  }
}

/// 카카오 로그인 성공 후 파이어베이스 로그인
void onKakaoLoginSuccessed(OAuthToken authToken) {
  // 인증 정보로 인증서 생성
  final OAuthProvider provider = OAuthProvider('oidc.kakao');
  final OAuthCredential credential =
      provider.credential(accessToken: authToken.accessToken, idToken: authToken.idToken);

  // 인증서로 파이어베이스 로그인
  FirebaseAuth.instance.signInWithCredential(credential);
}
