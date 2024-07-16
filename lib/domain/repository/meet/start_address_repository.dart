import '../../model/display/meet/address_model.dart';

abstract class StartAddressRepository {
  Future<void> setAddress(AddressModel addressModel);
  Future<List<AddressModel>> getAllAddress();
  Future<void> updateAddress(int index, String address, double latitude, double longitude);
  Future<void> deleteAddress(int index);
  Future<void> removeAddress(int index);
}