import '../../../domain/model/meet/start_address_model.dart';
import '../../../domain/repository/meet/start_address_repository.dart';

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



}