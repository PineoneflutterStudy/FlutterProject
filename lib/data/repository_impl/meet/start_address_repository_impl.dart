import '../../../../domain/model/display/meet/address_model.dart';
import '../../../../domain/repository/meet/start_address_repository.dart';
import '../../../data_source/local_storage/meet/local_prefs_storage.dart';

class StartAddressRepositoryImpl implements StartAddressRepository {

  final List<AddressModel> _addressModel = [];
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
  Future<void> updateAddress(AddressModel addressModel) async {
    /*_addressModel[index] = AddressModel(index: index, address: newAddress, latitude: latitude, longitude: longitude);*/
    await _localPrefsStorage.updateAddress(addressModel);
  }

  @override
  Future<void> deleteAddress(int index) async {
    //_addressModel[index] = AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0);
    await _localPrefsStorage.deleteAddress(index);
  }

  @override
  Future<void> removeAddress(int index) async {
    _addressModel.removeAt(index);
  }



}