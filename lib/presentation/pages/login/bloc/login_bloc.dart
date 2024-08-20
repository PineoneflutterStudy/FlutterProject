import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  Future<void> _onLoginOptionItemPressed(Emitter<LoginState> emit, AuthType authType) async {
    final FirebaseAuthUtil authUtil = FirebaseAuthUtil();

    switch (authType) {
      case AuthType.google:
        try {
          await authUtil.signInWithGoogle();
          CustomLogger.logger.i('$_tag Google sign-in succeeded.');
        } catch (error) {
          CustomLogger.logger.e('$_tag `Error - $error');
          //eff 예외처리 필요
        }

      case AuthType.naver:
        await authUtil.signInWithNaver();

      case AuthType.kakao:
        try {
          await authUtil.signInWithKakao();
          CustomLogger.logger.i('$_tag Kakao sign-in succeeded.');
        } catch (error) {
          CustomLogger.logger.e('$_tag `Error - $error');
          //eff 예외처리 필요
        }

      case AuthType.email:
      //eff 상태 변경해서 _launchEmailSignInPage() 불러야한다.
      // emit(LoginState.loggedOut());
    }
  }

  void _onUserChanged(Emitter<LoginState> emit, User? user) {
    // user 가 null 이라는 건 로그인 된 상태에서 로그아웃 되었다는 건데
    // 정상적인 상황은 아니므로 로그아웃하고 토스트 노출
    if (user == null) {
      CustomLogger.logger.e('$_tag `Error - User changed but is null.');
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

  /// ## 네이버 로그인 결과를 받기 위한 앱 링크 초기화
  /// [FirebaseAuthUtil.signInWithNaver]의 결과를 받기 위해선 호출이 필요하다.
  Future<void> _initAppLinks() async {
    final FirebaseAuthUtil authUtil = FirebaseAuthUtil();

    final AppLinks appLinks = AppLinks();
    final Uri? initialLink = await appLinks.getInitialLink();
    if (initialLink != null) {
      authUtil.handleNaverAppLinks(initialLink);
    }

    appLinks.uriLinkStream.listen((uri) {
      CustomLogger.logger.d('$_tag App links received. uri = ${uri.toString()}');

      try {
        authUtil.handleNaverAppLinks(uri);
      } catch (error) {
        CustomLogger.logger.e('$_tag `Error - $error');
        //eff 예외처리 필요
      }
    }, onError: (error, stackTrace) {
      CustomLogger.logger
          .e('`Error - Naver sign-in failed: error = $error, stackTrace = $stackTrace');
      //eff 예외처리 필요
    });
  }
}
