import '../../model/meet/start_address_model.dart';

abstract class StartAddressRepository {
  Future<void> setAddress(StartAddressModel addressModel);
  Future<List<StartAddressModel>> getAllAddress();
}