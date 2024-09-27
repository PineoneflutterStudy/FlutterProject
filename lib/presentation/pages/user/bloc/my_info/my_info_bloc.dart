import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant/Tag.dart';
import '../../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../../core/utils/logger.dart';

part 'my_info_bloc.freezed.dart';
part 'my_info_event.dart';
part 'my_info_state.dart';

/// ## 내 정보 화면 Bloc
///
/// author [Eogeum@naver.com]
class MyInfoBloc extends Bloc<MyInfoEvent, MyInfoState> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.MY_INFO;

//==============================================================================
//  Methods
//==============================================================================
  MyInfoBloc() : super(const MyInfoState.initial()) {
    on<MyInfoEvent>((event, emit) async {
      CustomLogger.logger.i('$_tag Event occurred. event = ${event.runtimeType}');
      await event.when(
        started: () => _onStarted(emit),
        logoutRequested: () => _onLogoutRequested(emit),
        errorOccurred: () => _onErrorOccurred(),
      );
    });
  }

  Future<void> _onStarted(Emitter<MyInfoState> emit) async {}

  Future<void> _onLogoutRequested(Emitter<MyInfoState> emit) async {
    await FirebaseAuthUtil().auth.signOut();
    emit(MyInfoState.loggedOut());
  }

  Future<void> _onErrorOccurred() async {}

  /// ## 현재와 동일한 상태(state)인 경우 초기화 후 변경
  void _emitWithReset(Emitter<MyInfoState> emit, MyInfoState userState) {
    if (userState == state) {
      emit(MyInfoState.initial());
    }
    emit(userState);
  }
}
