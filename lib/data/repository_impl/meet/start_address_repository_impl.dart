import 'package:logger/logger.dart';

import '../../../core/utils/DBkey.dart';
import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/model/display/meet/address_model.dart';
import '../../../domain/repository/meet/start_address_repository.dart';
import '../../data_source/local_storage/meet/local_prefs_storage.dart';

class StartAddressRepositoryImpl implements StartAddressRepository {
  final LocalPrefsStorage _localPrefsStorage;

  StartAddressRepositoryImpl({
    required LocalPrefsStorage localPrefsStorage,
}) : _localPrefsStorage = localPrefsStorage;
  @override
  Future<List<AddressModel>> getAllAddress() async {
    final fetchAddressList = await _localPrefsStorage.getAddressList();
    // 출발지 정보가 비었다면 디폴트 출발지 설정
    return fetchAddressList;
  }

  @override
  Future<void> setDefaultData() async {
    await _localPrefsStorage.setDefaultAddress(); // 디폴트 값 세팅
  }

  @override
  Future<void> updateAddress(AddressModel addressModel) async {
    await _localPrefsStorage.updateAddress(addressModel);
  }

  @override
  Future<void> deleteAddress(AddressModel addressModel) async {
    await _localPrefsStorage.deleteAddress(addressModel);
  }

  @override
  Future<void> deleteAddressInput(int index) async {
    await _localPrefsStorage.deleteAddressInput(index);
  }

  Future<void> resetAddress() async {
    await _localPrefsStorage.resetAddress();
  }

}