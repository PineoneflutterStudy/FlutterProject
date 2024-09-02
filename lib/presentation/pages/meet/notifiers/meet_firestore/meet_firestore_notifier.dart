import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/repository/meet/location_firestore.repository.dart';
import '../../providers.dart';
import 'meet_firestore_state.dart';

part 'meet_firestore_notifier.g.dart';

final Logger _logger = CustomLogger.logger;
@riverpod
class MeetFireStoreNotifier extends _$MeetFireStoreNotifier {
  @override
  MeetFireStoreState build() {
    return const MeetFireStoreState();
  }

  LocationFireStoreRepository get _locationRepo => ref.read(locationFireStoreDBProvider);

  Future<void> getLoginState() async {
    // 현재 로그인 되어 있지 않습니다..!
    if (await _locationRepo.getLoginState() == null) {
      _logger.i('Current User Non Login Info...!');
      state = state.copyWith(
        loginStatus: MeetLoginStatus.nonLogin,
      );
      return;
    }

    // 현재 유저가 로그인 되어 있음을 알려주는 로그!
    _logger.i('Current User is Login Success!!');

    // todo 로그인 시 DB에 정보 가져오는 로직 추가...

    // 현재 로그인 되어있음
    state = state.copyWith(
      loginStatus: MeetLoginStatus.login,
    );
  }

  Future<void> updateLoginState(bool isLogin) async => isLogin
      ? state = state.copyWith(
    loginStatus: MeetLoginStatus.login,
  )
      : state = state.copyWith(
    loginStatus: MeetLoginStatus.nonLogin,
  );
}
