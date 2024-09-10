import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../../../domain/model/display/meet/tour_location.model.dart';
import '../../../../../domain/repository/meet/start_address_repository.dart';
import '../../providers.dart';
import 'address_shprf_state.dart';

part 'address_shprf_notifier.g.dart';

final Logger _logger = CustomLogger.logger;
final firestore = FirebaseFirestoreUtil();

@riverpod
class AddressShprfNotifier extends _$AddressShprfNotifier {
  @override
  AddressShprfState build() {
    return const AddressShprfState();
  }
  AddressShrefRepository get _repo => ref.read(localStorageProvider);

  /// ## Default Address Data Set
  Future<void> getDefaultAddress() async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    resetAddress(); // 기존에 남아있던 SharedPreferences 데이터 삭제 후 진행

    _logger.i('Set Default Data & Empty 2 Input Line');
    await _repo.setDefaultData();

    final list = await _repo.getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.of(state.addressList)..addAll(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## 출발지 정보 Update
  Future<void> addAddressInput(MeetAddressModel addressModel) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.updateAddress(addressModel);

    final list = await _repo.getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## 출발지 입력 라인 Add
  Future<void> addEmptyAddress(int index) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.updateAddress(MeetAddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0, totalDistance: 0, totalDuration: 0));

    final list = await _repo.getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## 입력된 주소 정보 Delete
  Future<void> deleteAddress(int index) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.deleteAddress(MeetAddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0, totalDuration: 0, totalDistance: 0));

    final list = await _repo.getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
    );
  }

  /// ## 출발지 입력 라인 Delete
  Future<void> deleteAddressInput(int index) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.deleteAddressInput(index);

    final list = await _repo.getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## SharedPreferences 에 저장한 주소 정보 reset ( All Delete )
  Future<void> resetAddress() async {
    _logger.i('Reset Local Repository..!');
    await _repo.resetAddress();
  }

  ///  목적지 저장
  Future<void> setDestination(TourLocationModel tourDto) async {
    await _repo.setDestination(tourDto);
  }

  /// ## 출발지 정보 Data Save ( SharedPreferences -> FireStore DB )
  Future<void> saveLocationsData() async {
    // 저장날짜 get
    final curDate = getCurDate();

    // FireStore DB 확인
    final locationDocRef = await firestore.getCollectionDocRef(DBKey.DB_LOCATIONS, curDate.toString());
    if (locationDocRef != null) { // 현재 날짜의 경로까지 ...
      List<dynamic> startingPointList = [];

      // 출발지 정보 get
      final addressList = await _repo.getAllAddress();
      _logger.i('Check All Address List -> ${addressList}');
      if (addressList.isEmpty) {
        state = state.copyWith(
          isDataSaved: 'fail',
        );
        return;
      }

      // 출발지 정보 make List
      for (var address in addressList) {
        _logger.i('Check Address List -> ${address}');
        startingPointList.add(address.toJson());
      }
      _logger.i('Check Address List -> ${startingPointList}');

      // 목적지 정보 get
      final destinationInfo = await _repo.getDestination();
      _logger.i('Get destination -> ${destinationInfo}');
      if(destinationInfo == null) {
        state = state.copyWith(
          isDataSaved: 'fail',
        );
        return;
      }

      // 목적지 정보 make Json
      _logger.i('Check destination point -> ${destinationInfo.toJson()}');

      final saveData = {
        'location_id' : curDate.toString(),
        'starting_point_list': startingPointList,
        'destination_point': destinationInfo.toJson(),
      };

      await firestore.setDocument(locationDocRef, saveData);

      resetAddress();
      state = state.copyWith(
        isDataSaved: 'success',
      );
    } else {
      _logger.e('locationDocRef is null..!!!');
      state = state.copyWith(
        isDataSaved: 'fail',
      );
      return;
    }
  }

  Future<List<MeetAddressModel>> getFireStoreDBData(List<Map<String, dynamic>>? getAllLocations) async {
    // 파이어베이스 조회 시 데이터가 있다면 ->
    if (getAllLocations!.isNotEmpty) {
      _logger.i('Get Firebase DB Data Success');
      return getAllLocations.map((location) => MeetAddressModel(
        index: location['index'] as int,
        address: location['address'] as String,
        latitude: location['latitude'] as double,
        longitude: location['longitude'] as double,
        totalDistance: location['totalDistance'] as int,
        totalDuration: location['totalDuration'] as int,
      )).toList();
    } else {
      _logger.e('Get Firebase DB Data Fail -> Empty..!');
      return List.empty();
    }
  }
}

DateTime getCurDate() {
  return  DateTime.now();
}