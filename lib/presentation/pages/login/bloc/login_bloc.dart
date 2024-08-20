import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/exception/email_duplicate_exception.dart';
import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/firebase/firebase_firestore_util.dart';
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
          emailDuplicated: (email, providers) => emit(LoginState.emailDuplicateError(email, providers)),
          userChanged: (user) => _onUserChanged(emit, user),
          userInfoMissing: () => emit(LoginState.requireMoreUserInfo()));
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

    try {
      switch (authType) {
        case AuthType.google:
          await authUtil.signInWithGoogle();
          CustomLogger.logger.i('$_tag Google sign-in succeeded.');

        case AuthType.naver:
          await authUtil.signInWithNaver();

        case AuthType.kakao:
          await authUtil.signInWithKakao();
          CustomLogger.logger.i('$_tag Kakao sign-in succeeded.');

        case AuthType.email:
        //eff 상태 변경해서 _launchEmailSignInPage() 불러야한다.
        // emit(LoginState.loggedOut());
      }
    } catch (error) {
      CustomLogger.logger.e('$_tag `Error - $error');
      if (error is EmailDuplicateException) {
        add(LoginEvent.emailDuplicated(error.email, error.providers));
      } else {
        //eff 예외처리 필요
      }
    }
  }

  Future<void> _onUserChanged(Emitter<LoginState> emit, User? user) async {
    if (user == null) {
      CustomLogger.logger.w('$_tag User changed but is null.');
      return;
    }

    final FirebaseFirestoreUtil firestoreUtil = FirebaseFirestoreUtil();
    final DocumentReference? userDocRef = await firestoreUtil.getUserDocRef();
    if (userDocRef == null) {
      // 파이어스토어에 없는 신규 유저인 경우 파이어스토어에 저장
      firestoreUtil.setUserDoc(user);
    } else {
      // final Map<String, dynamic> userDocMap = firestoreUtil.toDynamicMap(await userDocRef.get());
      //ett 로그인 시 변경된 정보 있는지 확인하고 최신화
      // userDocMap.update(key, update)
      // firestoreUtil.updateDocument(currentUserDocRef, userDocMap);
    }

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
