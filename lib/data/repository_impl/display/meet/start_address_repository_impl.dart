import '../../../../domain/model/display/meet/start_address_model.dart';
import '../../../../domain/repository/meet/start_address_repository.dart';

class StartAddressRepositoryImpl implements StartAddressRepository {

  final List<StartAddressModel> _addressModel = [];

  @override
  Future<void> setAddress(StartAddressModel addressModel) async {
    _addressModel.add(addressModel);
  }

  @override
  Future<List<StartAddressModel>> getAllAddress() async {
    return _addressModel;
  }

  @override
  Future<void> updateAddress(int index, String newAddress, double latitude, double longitude) async {
    _addressModel[index] = StartAddressModel(index: index, address: newAddress, latitude: latitude, longitude: longitude);
  }

  @override
  Future<void> deleteAddress(int index) async {
    _addressModel[index] = StartAddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0);
  }

  @override
  Future<void> removeAddress(int index) async {
    _addressModel.removeAt(index);
  }



}