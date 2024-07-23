import '../../model/display/meet/address_model.dart';

abstract class StartAddressRepository {
  Future<List<AddressModel>> getAllAddress();
  Future<void> updateAddress(AddressModel addressModel);
  Future<void> deleteAddress(int index);
  Future<void> removeAddress(int index);
}