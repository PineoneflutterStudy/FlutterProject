import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/model/display/meet/location_db.model.dart';
import '../../../../../domain/model/display/meet/tour_location.model.dart';
import '../../../../../domain/repository/meet/location_firestore.repository.dart';
import '../../providers.dart';
import 'meet_firestore_state.dart';

part 'meet_firestore_notifier.g.dart';

final Logger _logger = CustomLogger.logger;
final String UrlDestination = 'mapMarker/location_honey_case';
final String UrlStarting = 'mapMarker/location_point_bee';
@riverpod
class MeetFireStoreNotifier extends _$MeetFireStoreNotifier {
  @override
  MeetFireStoreState build() {
    return const MeetFireStoreState();
  }

  LocationFireStoreRepository get _locationRepo => ref.read(locationFireStoreDBProvider);
  /// ## 로그인 상태 Get
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

    // 현재 로그인 되어있음
    state = state.copyWith(
      loginStatus: MeetLoginStatus.login,
    );

    // 현재 유저가 로그인 되어 있음을 알려주는 로그!
    _logger.i('Current User is Login Success!!');

    // todo 로그인 시 DB에 정보 가져오는 로직 추가...
    final getDbData = await getLocationDB();

    if (getDbData.isEmpty) {
      state = state.copyWith(
        status: MeetFireStoreStatus.failure, // 데이터가 없으므로 failure
      );
    } else {
      state = state.copyWith(
        getLocationInfo: getDbData,
        status: MeetFireStoreStatus.success, // 데이터가 없으므로 failure
      );
    }

  }
  /// 로그인 상태 Update
  Future<void> updateLoginState(bool isLogin) async => isLogin
      ? state = state.copyWith(
    loginStatus: MeetLoginStatus.login,
  )
      : state = state.copyWith(
    loginStatus: MeetLoginStatus.nonLogin,
    status: MeetFireStoreStatus.failure,
  );

  /// ## Firestore Database Get Locations Info
  Future<List<LocationDbModel>> getLocationDB() async {
    state = state.copyWith(
      status: MeetFireStoreStatus.loading,
    );

    final getAllLocations = await _locationRepo.getLocationAllInfo(DBKey.DB_LOCATIONS);
    _logger.i('Check get All Address ( firebase DB ) -> ${getAllLocations}');

    if (getAllLocations != null || getAllLocations!.isNotEmpty) {
      
      List<LocationDbModel> locations = getAllLocations.map((locationJson) {
        // JSON에서 starting_point_list와 destination_point를 추출
        final startingPointsJson = locationJson['starting_point_list'] as List<dynamic>;
        final destinationPointJson = locationJson['destination_point'] as Map<String, dynamic>;
        final locationId = locationJson['location_id'];

        // AddressModel 리스트로 변환
        List<AddressModel> startingPoints = startingPointsJson
            .map((point) => AddressModel.fromJson(point as Map<String, dynamic>))
            .toList();

        // TourLocationModel로 변환
        TourLocationModel destinationPoint = TourLocationModel.fromJson(destinationPointJson);

        // LocationDbModel 생성
        return LocationDbModel(
          starting_point_list: startingPoints,
          destination_point: [destinationPoint],
          location_id: locationId, // destination_point는 리스트로 감싸야 함
        );
      }).toList();
      
      return locations;
    }
    return List.empty();
  }


  /// ## Firebase Storage -> Marker에 사용할 이미지 Url Get
  Future<void> getMarkerImage() async {
    state = state.copyWith(storageStatus: MeetFireStorageStatus.loading,);

    final destinationImgUrl = await _locationRepo.getImgUrl(UrlDestination); //  목적지 이미지
    final startingPointImgUrl = await _locationRepo.getImgUrl(UrlStarting); //  출발지 이미지

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
