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
        status: MeetFireStoreStatus.failure,
      );
      return;
    }

    // 현재 유저가 로그인 되어 있음을 알려주는 로그!
    _logger.i('Current User is Login Success!!');

    // todo 로그인 시 DB에 정보 가져오는 로직 추가...
    getLocationDB();

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
    status: MeetFireStoreStatus.failure,
  );

  /// ## Firestore Database Get Location Info
  // TODO save 로직 우선 구현 후 get 동작 구현... 우선 실패 반환
  // TODO 성공 시 날짜별로 분류되어 있는 출발 목적지 정보들을  가져와서 저장...
  Future<void> getLocationDB() async {
    state = state.copyWith(
      status: MeetFireStoreStatus.loading,
    );

    // firebase DB 우선 확인.. -> 이게 있어야 할듯
    /*final getAllLocations = await firestore.getDocumentsFromCollection(DBKey.DB_LOCATIONS);
    _logger.i('Check get All Address ( firebase DB ) -> ${getAllLocations}');

    if (getAllLocations != null) {
      final dbData = await getFireStoreDBData(getAllLocations);
      _logger.i('Check get DB Data -> ${dbData}');

      if (dbData.isNotEmpty) {
        _logger.i('DB에 값이 잇어서 DB 값 셋팅!!');
        for (int i = 0; i < dbData.length; i++) {
          await _repo.updateAddress(dbData[i]);
        }
      } else {
        _logger.i('[ getFireStoreDBData ] is Empty..!');
        await _repo.setDefaultData();
      }
    } else {
      _logger.i('[ getDocumentsFromCollection ] is Null & Empty..!');
      await _repo.setDefaultData();
    }*/



    state = state.copyWith(
      status: MeetFireStoreStatus.failure,
    );
  }


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
