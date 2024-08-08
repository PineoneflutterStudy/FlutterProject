import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/logger.dart';
import '../funtion/auth.dart';

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
    initAppLinks();

    // 파이어베이스 유저 변경 구독
    FirebaseAuthUtil().auth.userChanges().listen(
          (user) {
        // 이메일 존재 여부 확인
        final String email = user?.email ?? '';
        if (email.isEmpty) {
          // 이메일 없는 경우 추가로 받아야 한다.
          // ex) 비즈앱 심사 전 카카오 로그인
          add(LoginEvent.userInfoMissing());
        } else {
          // 이메일 있는 경우 파이어스토어에 저장하고 종료
          add(LoginEvent.userChanged(user));
        }
      },
    );
  }

  void _onUserChanged(Emitter<LoginState> emit, User? user) {
    add(LoginEvent.loginSucceeded());
  }

  void _onUserInfoMissing(Emitter<LoginState> emit) {
    emit(LoginState.requireMoreUserInfo());
  }

  void _onLoginSucceeded(Emitter<LoginState> emit) {
    emit(LoginState.loggedIn());
  }
}
