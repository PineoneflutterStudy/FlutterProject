
import '../../model/display/meet/start_address_model.dart';

abstract class StartAddressRepository {
  Future<void> setAddress(StartAddressModel addressModel);
  Future<List<StartAddressModel>> getAllAddress();
  Future<void> updateAddress(int index, String address, double latitude, double longitude);
  Future<void> deleteAddress(int index);
  Future<void> removeAddress(int index);
}