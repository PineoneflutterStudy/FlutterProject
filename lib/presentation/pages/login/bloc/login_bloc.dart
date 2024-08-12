import 'dart:convert';
import 'dart:math';

import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

const String _tag = '[Login]';

/// ## 로그인 화면 Bloc
///
/// author [Eogeum@naver.com]
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      event.when(
          started: () => _onStarted(emit),
          loginOptionItemPressed: (authType) => _onLoginOptionItemPressed(emit, authType),
          userChanged: (user) => _onUserChanged(emit, user),
          userInfoMissing: () => _onUserInfoMissing(emit),
          loginSucceeded: () => _onLoginSucceeded(emit));
    });
  }

  void _onStarted(Emitter<LoginState> emit) {
    // 로그인 여부 확인
    if (FirebaseAuthUtil().auth.currentUser != null) {
      CustomLogger.logger.w('$_tag Already logged in. Exiting the login page.');
      emit(LoginState.alreadyLoggedIn());
      return;
    }

    // 네이버 로그인 결과를 받기 위한 앱 링크 초기화
    _initAppLinks();

    // 파이어베이스 유저 변경 구독
    FirebaseAuthUtil().auth.userChanges().listen((user) => add(LoginEvent.userChanged(user)));
  }

  void _onLoginOptionItemPressed(Emitter<LoginState> emit, AuthType authType) {
    switch (authType) {
      case AuthType.google:
        _launchGoogleLogin();
      case AuthType.naver:
        _launchNaverLogin();
      case AuthType.kakao:
        _launchKakaoLogin();
      case AuthType.email:
        _launchSignInPage();
    }
  }

  void _onUserChanged(Emitter<LoginState> emit, User? user) {
    // user 가 null 이라는 건 로그인 된 상태에서 로그아웃 되었다는 건데
    // 정상적인 상황은 아니므로 로그아웃하고 토스트 노출
    if (user == null) {
      CustomLogger.logger.e('$_tag Error - User changed but is null.');
      FirebaseAuthUtil().auth.signOut();
      emit(LoginState.loggedOut());
      return;
    }

    add(LoginEvent.loginSucceeded());
  }

  void _onUserInfoMissing(Emitter<LoginState> emit) {
    emit(LoginState.requireMoreUserInfo());
  }

  void _onLoginSucceeded(Emitter<LoginState> emit) {
    emit(LoginState.loggedIn());
  }

  Future<void> _launchGoogleLogin() async {
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
  Future<void> _initAppLinks() async {
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

  Future<void> _launchNaverLogin() async {
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

  Future<void> _launchKakaoLogin() async {
    // 카카오톡 실행 가능 여부 확인
    // 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    if (await kakao.isKakaoTalkInstalled()) {
      try {
        final kakao.OAuthToken authToken = await kakao.UserApi.instance.loginWithKakaoTalk();
        CustomLogger.logger.i('$_tag KakaoTalk login successed.');
        _onKakaoLoginSuccessed(authToken);
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
        await _loginWithKakaoAccount();
      }
    } else {
      await _loginWithKakaoAccount();
    }
  }

  Future<void> _loginWithKakaoAccount() async {
    try {
      final kakao.OAuthToken authToken = await kakao.UserApi.instance.loginWithKakaoAccount();
      CustomLogger.logger.i('$_tag KakaoAccount login successed.');
      _onKakaoLoginSuccessed(authToken);
    } catch (error) {
      CustomLogger.logger.e('$_tag KakaoAccount login failed. error = $error');
    }
  }

  /// 카카오 비즈앱 심사를 통과해야 카카오 계정 이메일 가져올 수 있다.
  final bool isKakaoBizApp = false; // fixme 비즈앱 심사 통과 시 변경

  /// 카카오 로그인 성공 후 파이어베이스 로그인
  void _onKakaoLoginSuccessed(kakao.OAuthToken authToken) {
    if(isKakaoBizApp) {
      // 인증 정보로 인증서 생성
      final OAuthProvider provider = OAuthProvider('oidc.kakao');
      final OAuthCredential credential =
      provider.credential(accessToken: authToken.accessToken, idToken: authToken.idToken);

      // 인증서로 파이어베이스 로그인
      FirebaseAuth.instance.signInWithCredential(credential);
    } else {
      // 비즈앱 심사를 통과하지 않아 이메일을 가져올 수 없으므로
      //eff 이메일 가입 화면으로 이동하는 등 시나리오 필요
      // add(LoginEvent.userInfoMissing());
    }
  }

  void _launchSignInPage() {
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
