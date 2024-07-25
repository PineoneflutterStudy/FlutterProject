import '../../model/display/meet/address_model.dart';

abstract class StartAddressRepository {
  Future<List<AddressModel>> getAllAddress();
  Future<bool> updateAddress(AddressModel addressModel);
  Future<void> deleteAddress(AddressModel addressModel);
  Future<bool> deleteAddressInput(int index);
  Future<void> resetAddress();
}