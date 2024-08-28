import '../../model/display/meet/address_model.dart';
import '../../repository/meet/start_address_repository.dart';

/// ## 출발지 입력 화면 진입
class GetAllAddress {
  GetAllAddress({
    required StartAddressRepository repository,
  }) : _repository = repository;

  final StartAddressRepository _repository;

  Future<List<AddressModel>> call() async {
    final list = await _repository.getAllAddress();
    return list;
  }
}
