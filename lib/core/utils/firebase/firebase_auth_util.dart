import 'dart:convert';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:url_launcher/url_launcher.dart';

import '/../../../domain/model/display/login/user.model.dart' as kkul;
import '../../../domain/model/display/login/auth_type.dart';
import '../constant/tag.dart';
import '../exception/email_duplicate_exception.dart';
import '../logger.dart';
import 'firebase_firestore_util.dart';

class FirebaseAuthUtil {
  static const String _ERROR_EMAIL_DUPLICATED = 'ERROR_EMAIL_DUPLICATED';

  final FirebaseAuth auth;

  FirebaseAuthUtil({FirebaseAuth? auth}) : auth = auth ?? FirebaseAuth.instance;

  User? getCurrentUser() => auth.currentUser;

  String? getUserId() => getCurrentUser()?.uid;

  bool isLoggedIn() => (getCurrentUser() != null);

  /// ## 구글 로그인을 실행한다.
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await GoogleSignIn().signIn();

      if (account == null) {
        CustomLogger.logger.w('Google sign-in failed: account == null');
        return;
      }

      // 웹인 경우 scope 접근 확인 필요
      // if (kIsWeb) {
      //   isAuthorized = await _googleSignIn.canAccessScopes(scopes);
      // }

      // 동일한 이메일로 가입된 계정 존재 여부 확인
      await checkEmailDuplicate(account.email, AuthType.google.providerId);

      // 구글 인증 정보 가져오기
      final GoogleSignInAuthentication authentication = await account.authentication;

      // 인증 정보로 인증서 생성
      final OAuthCredential credential = GoogleAuthProvider.credential(
          idToken: authentication.idToken, accessToken: authentication.accessToken);

      // 인증서로 파이어베이스 로그인
      await auth.signInWithCredential(credential);
    } on EmailDuplicateException {
      rethrow;
    } catch (e) {
      throw Exception('Google sign-in failed: error = $e');
    }
  }

  /// ## 네이버 로그인을 실행한다.
  ///
  /// 네이버 로그인 결과를 처리하기 위해서는 아래 코드 예제와 같이
  /// [handleNaverAppLinks] 호출을 위한 앱 링크 초기화가 필요하다.
  ///
  /// ### 코드 예제
  ///
  /// ```dart
  ///   Future<void> _initAppLinks() async {
  ///     final AppLinks appLinks = ;
  ///     AppLinks().uriLinkStream.listen((uri) {
  ///       try {
  ///         FirebaseAuthUtil().handleNaverAppLinks(uri);
  ///       } catch (error) {
  ///         // 예외 처리
  ///       }
  ///     });
  ///   }
  ///
  /// ```
  Future<void> signInWithNaver() async {
    final String clientId = FlutterConfig.get('NAVER_CLIENT_ID');
    final String redirectUri =
        'https://us-central1-gaekkul-project.cloudfunctions.net/naverLoginCallback';
    // state is random nonce used for security
    final String state = base64Url.encode(List<int>.generate(16, (_) => Random().nextInt(255)));

    final Uri url = Uri.parse(
        'https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=$clientId&redirect_uri=$redirectUri&state=$state');
    await launchUrl(url);
  }

  /// ## 네이버 로그인과 관련된 앱 링크를 처리한다.
  Future<void> handleNaverAppLinks(Uri uri) async {
    try {
      if (uri.authority == 'login-callback') {
        // 구글 클라우드에서 생성한 커스텀 토큰 가져오기
        final String firebaseToken = uri.queryParameters['firebaseToken'] ?? '';
        if (firebaseToken.isEmpty) {
          // 로그인에 실패한 경우 에러 메시지에 따라 처리
          final String errorMessage = uri.queryParameters['errorMessage'] ?? '';
          final String email = uri.queryParameters['email'] ?? '';

          if (errorMessage == _ERROR_EMAIL_DUPLICATED && email.isNotEmpty) {
            await checkEmailDuplicate(email, AuthType.naver.providerId);
          } else {
            throw Exception('Naver sign-in failed: firebaseToken.isEmpty');
          }

          return;
        }

        // 커스텀 토큰으로 파이어베이스 로그인
        await auth.signInWithCustomToken(firebaseToken);
      }
    } on EmailDuplicateException {
      rethrow;
    } catch (e) {
      throw Exception('Naver sign-in failed: error = $e');
    }
  }

  /// ## 카카오 로그인을 실행한다.
  Future<void> signInWithKakao() async {
    if (await kakao.isKakaoTalkInstalled()) {
      // 카카오톡 실행 가능한 경우 카카오톡으로 로그인
      bool isLoginSucceeded = false;
      try {
        final kakao.OAuthToken authToken = await kakao.UserApi.instance.loginWithKakaoTalk();
        isLoginSucceeded = true;
        await _onKakaoLoginSucceeded(authToken);
      } catch (error) {
        // _onKakaoLoginSucceeded에서 발생한 예외는 rethrow
        if (isLoginSucceeded) {
          rethrow;
        }

        const String _tag = Tag.LOGIN;

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오 계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException &&
            (error.code == 'CANCELED' || error.code == 'access_denied')) {
          CustomLogger.logger.i('$_tag KakaoTalk sign-in canceled.');
          return;
        }

        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        CustomLogger.logger.w('$_tag KakaoTalk sign-in failed: error = $error');
        await _signInWithKakaoAccount();
      }
    } else {
      // 카카오톡 실행 불가한 경우 카카오 계정으로 로그인
      await _signInWithKakaoAccount();
    }
  }

  Future<void> _signInWithKakaoAccount() async {
    bool isLoginSucceeded = false;
    try {
      final kakao.OAuthToken authToken = await kakao.UserApi.instance.loginWithKakaoAccount();
      isLoginSucceeded = true;
      await _onKakaoLoginSucceeded(authToken);
    } catch (error) {
      // _onKakaoLoginSucceeded에서 발생한 예외는 rethrow
      if (isLoginSucceeded) {
        rethrow;
      }

      throw Exception('Kakao account sign-in failed: error = $error');
    }
  }

  /// 카카오 비즈앱 심사를 통과해야 카카오 계정 이메일 가져올 수 있다.
  final bool isKakaoBizApp = false; // fixme 비즈앱 심사 통과 시 변경

  /// ## 카카오 로그인 성공 후 파이어베이스 로그인
  Future<void> _onKakaoLoginSucceeded(kakao.OAuthToken authToken) async {
    if (isKakaoBizApp) {
      final kakao.User user = await kakao.UserApi.instance.me();
      final String? email = user.kakaoAccount?.email;
      if (email == null || email.isEmpty) {
        throw Exception('Kakao sign-in failed: email == null || email.isEmpty');
      }

      // 동일한 이메일로 가입된 계정 존재 여부 확인
      await checkEmailDuplicate(email, AuthType.kakao.providerId);

      // 인증 정보로 인증서 생성
      final OAuthProvider provider = OAuthProvider('oidc.kakao');
      final OAuthCredential credential = provider.credential(
          accessToken: authToken.accessToken, idToken: authToken.idToken);

      // 인증서로 파이어베이스 로그인
      await auth.signInWithCredential(credential);
    } else {
      // 비즈앱 심사를 통과하지 않아 이메일을 가져올 수 없으므로
      //eff 이메일 가입 화면으로 이동하는 등 시나리오 필요
      // add(LoginEvent.userInfoMissing());
    }
  }

  /// ## 전달받은 User의 ProviderId를 나열한 리스트 반환
  Future<List<String>> getProvidersFromUser(User user) async {
    final List<String> providers = user.providerData.map((element) => element.providerId).toList();

    // 현재 사용자의 ID 토큰을 가져와서 커스텀 클레임을 확인
    final IdTokenResult tokenResult = await user.getIdTokenResult();
    final Map<String, dynamic> claims = tokenResult.claims ?? {};

    // 커스텀 클레임에서 'providers' 필드 가져오기
    final List<dynamic> customProviders = claims['providers'] as List<dynamic>? ?? [];

    // 커스텀 클레임에 있는 제공사 정보를 기본 제공사 정보 리스트에 추가
    customProviders.forEach((element) {
      if (element is String) {
        providers.add(element);
      }
    });

    return providers;
  }

  /// ## 전달받은 이메일로 가입된 정보가 있는지 확인하고 존재하는 경우 [EmailDuplicateException] 발생
  Future<void> checkEmailDuplicate(String email, String attemptedProvider) async {
    final String lowerCaseEmail = email.toLowerCase();
    final kkul.User? user = await FirebaseFirestoreUtil().getUserByEmail(lowerCaseEmail);
    if (user == null) {
      // 이메일에 해당하는 사용자 문서가 없는 경우 중복 아님
      return;
    }

    // providers가 null인 경우 예외 발생하므로 호출처에서 처리 필요
    final List<String> providers = user.providers;
    if (providers.contains(attemptedProvider)) {
      // 시도된 제공사가 리스트에 포함된 경우 중복 아님
      return;
    }

    throw EmailDuplicateException(lowerCaseEmail, attemptedProvider);
  }
}
