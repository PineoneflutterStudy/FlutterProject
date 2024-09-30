import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      await event.when(
        started: () => _onStarted(emit),
      );
    });
  }

  Future<void> _onStarted(Emitter<UserState> emit) async {
    _emitWithReset(emit, UserState.loading());

    final User? currentUser = FirebaseAuthUtil().getCurrentUser();
    if (currentUser == null) {
      emit(UserState.loggedOut());
    } else {
      emit(UserState.loggedIn(currentUser));
    }
  }

  /// ## 현재와 동일한 상태(state)인 경우 초기화 후 변경
  void _emitWithReset(Emitter<UserState> emit, UserState userState) {
    if (userState == state) {
      emit(UserState.initial());
    }
    emit(userState);
  }
}
