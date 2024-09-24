import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/constant/Tag.dart';
import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../core/utils/logger.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

/// ## 마이페이지 화면 Bloc
///
/// author [Eogeum@naver.com]
class UserBloc extends Bloc<UserEvent, UserState> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.USER;

//==============================================================================
//  Methods
//==============================================================================

  UserBloc() : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      CustomLogger.logger.i('$_tag Event occurred. event = ${event.runtimeType}');
      event.when(
        started: () => _onStarted(emit),
        logoutRequested: () => _onLogoutRequested(emit),
        errorOccurred: () => _onErrorOccurred(),
      );
    });
  }

  Future<void> _onStarted(Emitter<UserState> emit) async {
    if (FirebaseAuthUtil().isLoggedIn()) {
      emit(UserState.loggedIn());
    } else {
      emit(UserState.loggedOut());

    }
  }

  Future<void> _onLogoutRequested(Emitter<UserState> emit) async {
    FirebaseAuthUtil().auth.signOut();
    emit(UserState.loggedOut());
  }

  Future<void> _onErrorOccurred() async {}

  /// ## 현재와 동일한 상태(state)인 경우 초기화 후 변경
  void _emitWithReset(Emitter<UserState> emit, UserState userState) {
    if (userState == state) {
      emit(UserState.initial());
    }
    emit(userState);
  }
}
