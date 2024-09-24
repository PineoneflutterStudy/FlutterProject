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

  /// 카카오 비즈앱 심사를 통과해야 카카오 계정 이메일 가져올 수 있다.
  final bool _isKakaoBizApp = false; // fixme 비즈앱 심사 통과 시 변경

//==============================================================================
//  Methods
//==============================================================================
  @override
  Future<void> close() {
    _uriSubscription?.cancel();
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
        errorOccurred: () async => _emitWithReset(emit, LoginState.error()),
      );
    });
  }

  Future<void> _onStarted(Emitter<LoginState> emit) async {
    // 로그인 여부 확인
    if (FirebaseAuthUtil().auth.currentUser != null) {
      CustomLogger.logger.w('$_tag Already logged in. Exiting the login page.');
      _emitWithReset(emit, LoginState.alreadyLoggedIn());
      return;
    }
  }

  Future<void> _onLoginOptionItemPressed(Emitter<LoginState> emit, AuthType authType) async {
    final FirebaseAuthUtil authUtil = FirebaseAuthUtil();

    try {
      switch (authType) {
        case AuthType.google:
          final User? user = await authUtil.signInWithGoogle();
          add(LoginEvent.userChanged(user));
          break;

        case AuthType.naver:
          _initUriSubscription();
          await authUtil.signInWithNaver();
          break;

        case AuthType.kakao:
          if (_isKakaoBizApp) {
            _emitWithReset(emit, LoginState.requireMoreUserInfo());
          } else {
            final User? user = await authUtil.signInWithKakao();
            add(LoginEvent.userChanged(user));
          }
          break;

        case AuthType.email:
          _emitWithReset(emit, LoginState.navigateToEmailLogin());
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
  void _emitWithReset(Emitter<LoginState> emit, LoginState loginState) {
    if (loginState == state) {
      emit(LoginState.initial());
    }
    emit(loginState);
  }

  /// ## 네이버 로그인 결과를 받기 위한 [StreamSubscription] 초기화
  /// [FirebaseAuthUtil.signInWithNaver]의 결과를 받기 위해선 호출이 필요하다.
  void _initUriSubscription() {
    if (_uriSubscription != null) {
      return;
    }

    _uriSubscription = AppLinks().uriLinkStream.listen((uri) async {
      CustomLogger.logger.d('$_tag App links received. uri = ${uri.toString()}');

      try {
        final User? user = await FirebaseAuthUtil().handleNaverAppLinks(uri);
        add(LoginEvent.userChanged(user));
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
