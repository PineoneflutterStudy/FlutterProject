import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/firebase/firebase_auth_util.dart';

part 'like_event.dart';
part 'like_state.dart';
part 'like_bloc.freezed.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {

  final auth = FirebaseAuthUtil(); // 파이어베이스 유틸

  LikeBloc() : super(const LikeState.loading()) {
    on<LikeEvent>((event, emit) async {
      await event.when(
        checkLoginState: () async => await _onCheckLoginState(emit),
      );
    });
  }

  Future<void> _onCheckLoginState(Emitter<LikeState> emit) async {
    bool isLoggedIn = await auth.isLoggedIn();

    if (isLoggedIn) {
      emit(LikeState.initial(true));
    } else {
      emit(LikeState.initial(false));
    }
  }
}
