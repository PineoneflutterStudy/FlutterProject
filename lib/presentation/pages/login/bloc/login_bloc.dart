import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/constant/tag.dart';
import '../../../../core/utils/exception/email_duplicate_exception.dart';
import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

/// ## 로그인 화면 Bloc
///
/// author [Eogeum@naver.com]
class LoginBloc extends Bloc<LoginEvent, LoginState> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.LOGIN;

  StreamSubscription<Uri>? _uriSubscription;
  StreamSubscription<User?>? _userSubscription;

//==============================================================================
//  Methods
//==============================================================================
  @override
  Future<void> close() {
    _uriSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }

  LoginBloc() : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      CustomLogger.logger.i('$_tag Event occurred. event = ${event.runtimeType}');
      await event.when(
          started: () => _onStarted(emit),
          loginOptionItemPressed: (authType) => _onLoginOptionItemPressed(emit, authType),
          emailDuplicated: (email) async => _emitWithReset(emit, LoginState.emailDuplicateError(email)),
          userChanged: (user) => _onUserChanged(emit, user),
          userInfoMissing: () async => _emitWithReset(emit, LoginState.requireMoreUserInfo()),
          errorOccurred: () async => _emitWithReset(emit, LoginState.error()));
    });
  }

  _onStarted(Emitter<LoginState> emit) {
    // 로그인 여부 확인
    if (FirebaseAuthUtil().auth.currentUser != null) {
      CustomLogger.logger.w('$_tag Already logged in. Exiting the login page.');
      _emitWithReset(emit, LoginState.alreadyLoggedIn());
      return;
    }

    // 네이버 로그인 결과를 받기 위한 앱 링크 초기화
    _initAppLinks();

    // 파이어베이스 유저 변경 구독
    _userSubscription = FirebaseAuthUtil().auth.userChanges().listen((user) => add(LoginEvent.userChanged(user)));
  }

  Future<void> _onLoginOptionItemPressed(Emitter<LoginState> emit, AuthType authType) async {
    final FirebaseAuthUtil authUtil = FirebaseAuthUtil();

    try {
      switch (authType) {
        case AuthType.google:
          await authUtil.signInWithGoogle();
          break;

        case AuthType.naver:
          await authUtil.signInWithNaver();
          break;

        case AuthType.kakao:
          await authUtil.signInWithKakao();
          break;

        case AuthType.email:
          _emitWithReset(emit, LoginState.navigateToEmailSignIn());
          break;
      }
    } catch (error) {
      CustomLogger.logger.e('$_tag `Error - $error');
      if (error is EmailDuplicateException) {
        add(LoginEvent.emailDuplicated(error.email));
      } else {
        add(LoginEvent.errorOccurred());
      }
    }
  }

  Future<void> _onUserChanged(Emitter<LoginState> emit, User? user) async {
    if (user == null) {
      CustomLogger.logger.w('$_tag User changed but is null.');
      return;
    }

    final FirebaseFirestoreUtil firestoreUtil = FirebaseFirestoreUtil();
    final Map<String, dynamic>? userDocMap = await firestoreUtil.getUserDocumentData();
    if (userDocMap == null || userDocMap.isEmpty) {
      // 파이어스토어에 없는 신규 유저인 경우 파이어스토어에 저장
      await firestoreUtil.setUserDoc(user);
    } else {
      // final Map<String, dynamic> userDocMap = firestoreUtil.toDynamicMap(await userDocRef.get());
      //ett 로그인 시 변경된 정보 있는지 확인하고 최신화
      // userDocMap.update(key, update)
      // firestoreUtil.updateDocument(currentUserDocRef, userDocMap);
    }

    _emitWithReset(emit, LoginState.loggedIn());
  }

  /// ## 현재와 동일한 상태(state)인 경우 초기화 후 변경
  _emitWithReset(Emitter<LoginState> emit, LoginState loginState) {
    if (loginState == state) {
      emit(LoginState.initial());
    }
    emit(loginState);
  }

  /// ## 네이버 로그인 결과를 받기 위한 앱 링크 초기화
  /// [FirebaseAuthUtil.signInWithNaver]의 결과를 받기 위해선 호출이 필요하다.
  _initAppLinks() {
    _uriSubscription = AppLinks().uriLinkStream.listen((uri) async {
      CustomLogger.logger.d('$_tag App links received. uri = ${uri.toString()}');

      try {
        await FirebaseAuthUtil().handleNaverAppLinks(uri);
      } catch (error) {
        CustomLogger.logger.e('$_tag `Error - $error');
        if (error is EmailDuplicateException) {
          add(LoginEvent.emailDuplicated(error.email));
        } else {
          add(LoginEvent.errorOccurred());
        }
      }
    });
  }
}
