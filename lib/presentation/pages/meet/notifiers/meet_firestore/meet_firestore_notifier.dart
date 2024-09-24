import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/meet/location_db.model.dart';
import '../../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../../../domain/model/display/meet/meet_marker.model.dart';
import '../../../../../domain/model/display/meet/tour_location.model.dart';
import '../../../../../domain/repository/meet/location_firestore.repository.dart';
import '../../providers.dart';
import 'meet_firestore_state.dart';

part 'meet_firestore_notifier.g.dart';

final Logger _logger = CustomLogger.logger;
final String UrlDestination = 'mapMarker/map_honey'; // 목적지 벌꿀통
final String UrlStarting = 'mapMarker/location_point_bee';

final int blueColorValue = 0xCC0D47A1;
final int greenColorValue = 0xCC4CAF50;
final int orangeColorValue = 0xFFFFC000;
final int redColorValue = 0xCCB71C1C;
final int yellowColorValue = 0xFFFFFBCC;

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
    //await getLocationDB();
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
  Future<void> getLocationDB() async {
    state = state.copyWith(
      status: MeetFireStoreStatus.loading,
    );

    final getAllLocations = await _locationRepo.getLocationAllInfo(DBKey.DB_LOCATIONS);
    _logger.i('Check get All Address ( firebase DB ) -> ${getAllLocations}');

    if (getAllLocations != null && getAllLocations.isNotEmpty) {
      List<LocationDbModel> locations = getAllLocations.map((locationJson) {
        // JSON에서 starting_point_list와 destination_point를 추출
        final startingPointsJson = locationJson['starting_point_list'] as List<dynamic>;
        final destinationPointJson = locationJson['destination_point'] as Map<String, dynamic>;
        final locationId = locationJson['location_id'];
        final deleteDefaultCheck = 0;

        // AddressModel 리스트로 변환
        List<MeetAddressModel> startingPoints = startingPointsJson
            .map((point) => MeetAddressModel.fromJson(point as Map<String, dynamic>))
            .toList();

        // TourLocationModel로 변환
        TourLocationModel destinationPoint = TourLocationModel.fromJson(destinationPointJson);

        // LocationDbModel 생성
        return LocationDbModel(
          starting_point_list: startingPoints,
          destination_point: [destinationPoint],
          location_id: locationId,
          delete_check: deleteDefaultCheck,
        );
      }).toList();

      state = state.copyWith(
        getLocationInfo: locations,
        status: MeetFireStoreStatus.success, // 데이터가 있으므로 success
      );
    } else {
      state = state.copyWith(
        status: MeetFireStoreStatus.failure, // 데이터가 없으므로 failure
      );
    }
  }

  /// ## Delete All Location info
  Future<void> deleteAllLocationDB() async {
    state = state.copyWith(
      status: MeetFireStoreStatus.loading,
    );

    // Locations 삭제 진행
    for (var model in state.getLocationInfo) {
      await _locationRepo.deleteLocationAll(DBKey.DB_LOCATIONS, model.location_id);
    }

    // 삭제 이후 Locations DB get 하여 업데이트 진행
    getLocationDB();

  }

  Future<void> changeDeleteState() async {
    _logger.i('Cur Delete Status -> ${state.deleteStatus}');
    switch (state.deleteStatus) {
      case MeetItemDeleteStatus.delete:
        {
          state = state.copyWith(
            deleteStatus: MeetItemDeleteStatus.nonDelete,
          );
          _logger.i('Change Delete Status -> ${state.deleteStatus}');
          return;
        }
      case MeetItemDeleteStatus.nonDelete:
        {
          state = state.copyWith(
            deleteStatus: MeetItemDeleteStatus.delete,
          );
          _logger.i('Change Delete Status -> ${state.deleteStatus}');
          return;
        }
    }
  }

  /// ## Firebase Storage -> Marker에 사용할 이미지 Url Get
  Future<void> getMarkerImage() async {
    state = state.copyWith(storageStatus: MeetFireStorageStatus.loading,);

    final getAllImageUrl = await _locationRepo.getAllImgUrl('mapMarker');

    String destinationImgUrl = '';
    List<MeetMarkerModel> markerList = [];
    if (getAllImageUrl != null) {
      for (var path in getAllImageUrl) {
        if (path.contains('honey')) {
          destinationImgUrl = await _locationRepo.getImgUrl(path); //  목적지 이미지
        } else {
          markerList.add(
              MeetMarkerModel(
                  imagePath: await _locationRepo.getImgUrl(path),
                  loadColorValue: getLoadColor(path)
              )
          );
        }
      }

      state = state.copyWith(
        storageStatus: MeetFireStorageStatus.success,
        destinationImg: destinationImgUrl.toString(),
        startingPointInfo: markerList,
      );

    } else {
      // 이미지 Url를 정상적으로 가져오지 못함
      _logger.e('Get Image URL ( Firebase Storage ).. But can`t Find Image..!!');
      state = state.copyWith(
        storageStatus: MeetFireStorageStatus.failure,
        startingPointInfo: List.empty(),
        destinationImg: '',
      );
      return;
    }
  }
}

int getLoadColor(String path) {
  if (path.contains('blue')) {
    return blueColorValue;
  } else if (path.contains('green')) {
    return greenColorValue;
  } else if (path.contains('orange')) {
    return orangeColorValue;
  } else if (path.contains('red')) {
    return redColorValue;
  } else if (path.contains('yellow')) {
    return yellowColorValue;
  } else {
    return 0;
  }
}
