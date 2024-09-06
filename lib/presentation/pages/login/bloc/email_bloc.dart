import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/constant/Tag.dart';
import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/logger.dart';

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

  _onEmailSubmitted(Emitter<EmailState> emit, String email) {
    submittedEmail = email;
    // emit(Event);
  }

  _onLoginButtonPressed(Emitter<EmailState> emit, String email, String password) async {
    final bool isEmailEmpty = email.isEmpty;
    final bool isEmailInvalid = !CommonUtils.isValidEmail(email);
    final bool isPasswordEmpty = password.isEmpty;
    if (isEmailEmpty || isEmailInvalid || isPasswordEmpty) {
      return;
    }

    try {
      final FirebaseAuthUtil authUtil = FirebaseAuthUtil();
      final UserCredential userCredential =
      await authUtil.auth.signInWithEmailAndPassword(
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
