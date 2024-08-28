import '../../model/display/meet/address_model.dart';

/// ## 출발지 데이터(임시) SharedPreferences 사용을 위한 Repository
abstract class StartAddressRepository {
  Future<List<AddressModel>> getAllAddress();
  Future<void> setDefaultData();
  Future<void> updateAddress(AddressModel addressModel);
  Future<void> deleteAddress(AddressModel addressModel);
  Future<void> deleteAddressInput(int index);
  Future<void> resetAddress();
}