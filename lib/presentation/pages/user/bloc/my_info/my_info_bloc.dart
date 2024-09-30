import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant/Tag.dart';
import '../../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/firebase/firebase_storage_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../dialogs/user_dialog.dart';

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

  late User _user;

//==============================================================================
//  Methods
//==============================================================================
  MyInfoBloc() : super(const MyInfoState.initial()) {
    on<MyInfoEvent>((event, emit) async {
      CustomLogger.logger.i('$_tag Event occurred. event = ${event.runtimeType}');
      await event.when(
        started: (user) => _onStarted(emit, user),
        userUpdated: (user) => _onUserUpdated(emit, user),
        profileImageEditOptionSelected: (option, imageFile) =>
            _onProfileImageEditOptionSelected(emit, option, imageFile),
        logoutRequested: () => _onLogoutRequested(emit),
      );
    });
  }

  Future<void> _onStarted(Emitter<MyInfoState> emit, User user) async {
    _emitWithReset(emit, MyInfoState.loading());

    add(MyInfoEvent.userUpdated(user));
  }

  Future<void> _onUserUpdated(Emitter<MyInfoState> emit, User user) async {
    _emitWithReset(emit, MyInfoState.loading());

    _user = user;
    _emitWithReset(emit, MyInfoState.updated(user));
  }

  Future<void> _onProfileImageEditOptionSelected(
    Emitter<MyInfoState> emit,
    ProfileImageEditOption option,
    File? imageFile,
  ) async {
    _emitWithReset(emit, MyInfoState.loading());

    final String imageUrl;

    switch (option) {
      case ProfileImageEditOption.camera:
      case ProfileImageEditOption.gallery:
        if (imageFile == null) {
          _emitWithReset(emit, MyInfoState.error('이미지를 불러오지 못했습니다. 다시 시도해주세요.'));
          return;
        }

        imageUrl = await FirebaseStorageUtil().uploadProfileImage(_user.uid, imageFile);
        break;
      case ProfileImageEditOption.reset:
        imageUrl = '';
        break;
    }

    try {
      await FirebaseFirestoreUtil().updateUserPhotoUrl(_user, imageUrl);
    } catch (error) {
      _emitWithReset(emit, MyInfoState.error('프로필 이미지 변경 도중 알 수 없는 오류가 발생했습니다. 다시 시도해주세요.'));
      return;
    }

    // 프로필 이미지 변경된 경우 유저 정보 업데이트
    final User? reloadedUser = FirebaseAuthUtil().getCurrentUser();
    if (reloadedUser == null) {
      CustomLogger.logger.e('$_tag `Error - reloadedUser == null');
      return;
    }

    _emitWithReset(emit, MyInfoState.updated(reloadedUser));
  }

  Future<void> _onLogoutRequested(Emitter<MyInfoState> emit) async {
    await FirebaseAuthUtil().auth.signOut();
    emit(MyInfoState.loggedOut());
  }

  /// ## 현재와 동일한 상태(state)인 경우 초기화 후 변경
  void _emitWithReset(Emitter<MyInfoState> emit, MyInfoState myInfoState) {
    if (myInfoState == state) {
      emit(MyInfoState.initial());
    }
    emit(myInfoState);
  }
}
