import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/repository/meet/start_address_repository.dart';
import '../../../../../domain/usecase/meet/get_all_address.dart';
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

  GetAllAddress get _getAllAddress => ref.read(getAllAddressProvider);
  AddressShrefRepository get _repo => ref.read(localStorageProvider);

  /// ## 출발지 정보 Fetch
  Future<void> fetchAddressInfo() async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    resetAddress(); // 기존에 남아있던 SharedPreferences 데이터 삭제 후 진행

    // firebase DB 우선 확인..
    final getAllLocations = await firestore.getDocumentsFromCollection(DBKey.DB_LOCATIONS);
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
    }

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.of(state.addressList)..addAll(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## 출발지 정보 Update
  Future<void> addAddressInput(AddressModel addressModel) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.updateAddress(addressModel);

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## 출발지 입력 라인 Add
  Future<void> addEmptyAddress(int index) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.updateAddress(AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0));

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
      isMaxInput: list.length < 4,
    );
  }

  /// ## 입력된 주소 정보 Delete
  Future<void> deleteAddress(int index) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.deleteAddress(AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0));

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressShprfStatus.success,
      addresses: List.from(list),
    );
  }

  /// ## 출발지 입력 라인 Delete
  Future<void> deleteAddressInput(int index) async {
    state = state.copyWith(status: AddressShprfStatus.loading);

    await _repo.deleteAddressInput(index);

    final list = await _getAllAddress();
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

  /// ## 출발지 정보 Data Save ( SharedPreferences -> FireStore DB )
  Future<void> saveLocationsData() async {
    final list = await _getAllAddress();
    _logger.i('전체 경로 저장 전에 모든 경로 확인 -> ${list}');
    if (list.isNotEmpty) {
      for (int i = 0; i < list.length; i++) {
        final locationDocRef = await firestore.getCollectionDocRef(DBKey.DB_LOCATIONS, list[i].index.toString());
        if (locationDocRef != null) {
          await firestore.setDocument(locationDocRef, list[i].toJson());
        } else {
          state = state.copyWith(
            isDataSaved: 'fail',
          );
        }
      }
      resetAddress();
      state = state.copyWith(
        isDataSaved: 'success',
      );
    } else {
      state = state.copyWith(
        isDataSaved: 'fail',
      );
    }
  }

  Future<List<AddressModel>> getFireStoreDBData(List<Map<String, dynamic>>? getAllLocations) async {
    // 파이어베이스 조회 시 데이터가 있다면 ->
    if (getAllLocations!.isNotEmpty) {
      _logger.i('Get Firebase DB Data Success');
      return getAllLocations.map((location) => AddressModel(
        index: location['index'] as int,
        address: location['address'] as String,
        latitude: location['latitude'] as double,
        longitude: location['longitude'] as double,
      )).toList();
    } else {
      _logger.e('Get Firebase DB Data Fail -> Empty..!');
      return List.empty();
    }
  }
}