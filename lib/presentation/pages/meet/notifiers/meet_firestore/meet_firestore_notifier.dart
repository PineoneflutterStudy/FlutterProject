import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/utils/firebase/firebase_storage_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/repository/meet/location_firestore.repository.dart';
import '../../providers.dart';
import 'meet_firestore_state.dart';

part 'meet_firestore_notifier.g.dart';

final Logger _logger = CustomLogger.logger;
final FirebaseStorageUtil _storage = FirebaseStorageUtil();
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

  /// ## Firebase Storage -> Marker에 사용할 이미지 Url Get
  Future<void> getMarkerImage() async {
    state = state.copyWith(storageStatus: MeetFireStorageStatus.loading,);

    final destinationImgUrl = await _storage.getPngImageUrl('mapMarker/location_honey_case'); //  목적지 이미지
    final startingPointImgUrl = await _storage.getPngImageUrl('mapMarker/location_point_bee'); //  출발지 이미지

    // 이미지 Url를 정상적으로 가져오지 못함
    if (destinationImgUrl.isEmpty || startingPointImgUrl.isEmpty) {
      _logger.e('Get Image URL ( Firebase Storage ).. But can`t Find Image..!!');
      state = state.copyWith(
        storageStatus: MeetFireStorageStatus.failure,
        startingPointImg: '',
        destinationImg: '',
      );
      return;
    }

    _logger.i('Get Image URL ( Firebase Storage ).. Success Get Image URL');
    state = state.copyWith(
      storageStatus: MeetFireStorageStatus.success,
      startingPointImg: startingPointImgUrl.toString(),
      destinationImg: destinationImgUrl.toString(),
    );
  }
}
