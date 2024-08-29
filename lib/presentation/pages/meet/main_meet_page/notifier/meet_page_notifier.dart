import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../domain/repository/meet/location_firestore.repository.dart';
import '../../providers.dart';
import 'meet_page_state.dart';

final Logger _logger = CustomLogger.logger;

final meetPageStateProvider =
    StateNotifierProvider<MeetPageNotifier, MeetPageState>(
        (ref) => MeetPageNotifier(
              locationsRepo: ref.read(locationDBProvider),
            ));

class MeetPageNotifier extends StateNotifier<MeetPageState> {
  MeetPageNotifier({
    required LocationFireStoreRepository locationsRepo,
  })  : _locationRepo = locationsRepo,
        super(const MeetPageState());

  final LocationFireStoreRepository _locationRepo;

  Future<void> getLoginState() async {
    // 현재 로그인 되어 있지 않습니다..!
    if (await _locationRepo.getLoginState() == null) {
      _logger.i('Current User Non Login Info...!');
      state = state.copyWith(
        loginStatus: MeetPageLoginStatus.nonLogin,
      );
      return;
    }

    // 현재 유저가 로그인 되어 있음을 알려주는 로그!
    _logger.i('Current User is Login Success!!');

    // todo 로그인 시 DB에 정보 가져오는 로직 추가...

    // 현재 로그인 되어있음
    state = state.copyWith(
      loginStatus: MeetPageLoginStatus.login,
    );
  }

  Future<void> updateLoginState(bool isLogin) async => isLogin
      ? state = state.copyWith(
          loginStatus: MeetPageLoginStatus.login,
        )
      : state = state.copyWith(
          loginStatus: MeetPageLoginStatus.nonLogin,
        );
}
