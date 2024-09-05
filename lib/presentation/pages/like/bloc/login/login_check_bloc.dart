import 'package:bloc/bloc.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/firebase/firebase_auth_util.dart';

part 'login_check_event.dart';
part 'login_check_state.dart';
part 'login_check_bloc.freezed.dart';

class LoginCheckBloc extends Bloc<LoginCheckEvent, LoginCheckState> {

  final auth = FirebaseAuthUtil(); // 파이어베이스 유틸

  LoginCheckBloc() : super(const LoginCheckState.loading()) {
    on<LoginCheckEvent>((event, emit) async {
      await event.when(
        checkLogin: () async => await _onCheckLoginState(emit),
      );
    });
  }

  Future<void> _onCheckLoginState(Emitter<LoginCheckState> emit) async {
    bool isLoggedIn = await auth.isLoggedIn();

    if (isLoggedIn) {
      emit(LoginCheckState.loggedIn());
    } else {
      emit(LoginCheckState.loggedOut());
    }
  }
}
