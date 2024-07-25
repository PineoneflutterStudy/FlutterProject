import 'dart:ui';

import '../../../../domain/model/display/meet/address_model.dart';
import '../../../../domain/repository/meet/start_address_repository.dart';
import '../../data_source/local_storage/meet/local_prefs_storage.dart';

class StartAddressRepositoryImpl implements StartAddressRepository {
  final LocalPrefsStorage _localPrefsStorage;

  StartAddressRepositoryImpl({
    required LocalPrefsStorage localPrefsStorage,
}) : _localPrefsStorage = localPrefsStorage;

  @override
  Future<List<AddressModel>> getAllAddress() async {
    final localAddressList = await  _localPrefsStorage.getAddressList();
    if (localAddressList.isNotEmpty) {
      return localAddressList;
    }

    await _localPrefsStorage.setDefaultAddress(); // 디폴트 값 세팅 후 다시 조회하여 리턴
    final fetchAddressList = await _localPrefsStorage.getAddressList();
    // 출발지 정보가 비었다면 디폴트 출발지 설정
    return fetchAddressList;
  }

  @override
  Future<bool> updateAddress(AddressModel addressModel) async {
    return await _localPrefsStorage.updateAddress(addressModel);
  }

  @override
  Future<void> deleteAddress(AddressModel addressModel) async {
    await _localPrefsStorage.deleteAddress(addressModel);
  }

  @override
  Future<bool> deleteAddressInput(int index) async {
    return await _localPrefsStorage.deleteAddressInput(index);
  }

  Future<void> resetAddress() async {
    await _localPrefsStorage.resetAddress();
  }

}