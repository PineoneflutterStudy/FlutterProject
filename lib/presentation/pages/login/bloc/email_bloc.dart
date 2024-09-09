import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/constant/Tag.dart';
import '../../../../core/utils/exception/email_duplicate_exception.dart';
import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';
import '../../../../domain/model/display/login/user.model.dart' as kkul;

part 'email_bloc.freezed.dart';
part 'email_event.dart';
part 'email_state.dart';

/// ## 이메일 화면 Bloc
///
/// author [Eogeum@naver.com]
class EmailBloc extends Bloc<EmailEvent, EmailState> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.EMAIL;

  String submittedEmail = '';

//==============================================================================
//  Methods
//==============================================================================
  EmailBloc() : super(const EmailState.initial()) {
    on<EmailEvent>((event, emit) async {
      CustomLogger.logger.i('$_tag Event occurred. event = ${event.runtimeType}');
      await event.when(
        started: () async => emit(EmailState.initial()),
        emailSubmitted: (email) => _onEmailSubmitted(emit, email),
      );
    });
  }

  _onEmailSubmitted(Emitter<EmailState> emit, String email) async {
    final FirebaseAuthUtil authUtil = FirebaseAuthUtil();

    try {
      await authUtil.checkEmailDuplicate(email, AuthType.email.providerId);
    } catch (error) {
      CustomLogger.logger.e('$_tag `Error - $error');
      if (error is EmailDuplicateException) {
        emit(EmailState.emailDuplicated(error.email));
      } else {
        emit(EmailState.error());
      }
      return;
    }

    final String lowerCaseEmail = email.toLowerCase();
    final kkul.User? user = await FirebaseFirestoreUtil().getUserByEmail(lowerCaseEmail);
    if (user != null) {
      // 이메일과 일치하는 계정이 있는 경우
      // eff 비밀번호 입력 화면으로 이동
    } else {
      // 이메일과 일치하는 계정이 없는 경우
      // eff 회원가입을 위해 이메일 인증 화면으로 이동
    }
  }

  _onLoginButtonPressed(Emitter<EmailState> emit, String email, String password) async {
    try {
      final FirebaseAuthUtil authUtil = FirebaseAuthUtil();
      final UserCredential userCredential = await authUtil.auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;

      if (user != null) {
        _emitWithReset(emit, const EmailState.loggedIn());
      } else {
        _emitWithReset(emit, const EmailState.error());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        _emitWithReset(emit, const EmailState.userNotFound());
      } else if (e.code == 'wrong-password') {
        _emitWithReset(emit, const EmailState.wrongPassword());
      } else {
        CustomLogger.logger.e('$_tag `Error - $e');
        _emitWithReset(emit, const EmailState.error());
      }
    } catch (e) {
      CustomLogger.logger.e('$_tag `Error - $e');
      _emitWithReset(emit, const EmailState.error());
    }
  }

  /// ## 현재와 동일한 상태(state)인 경우 초기화 후 변경
  _emitWithReset(Emitter<EmailState> emit, EmailState emailState) {
    if (emailState == state) {
      emit(EmailState.initial());
    }
    emit(emailState);
  }
}
