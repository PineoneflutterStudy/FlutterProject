import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../data/repository_impl/display/meet/start_address_repository_impl.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/repository/meet/start_address_repository.dart';
import '../../../../../domain/usecase/meet/get_all_address.dart';
import '../../providers.dart';
import 'address_info_state.dart';

final addressInfoStateProvider =
StateNotifierProvider<AddressInfoNotifier, AddressInfoState>(
        (ref) => AddressInfoNotifier(
            getAllAddress: ref.read(getAllAddressProvider),
          repo: ref.read(addressRepositoryProvider),
        )
);

final Logger _logger = CustomLogger.logger;

/**
 * viewModel 과 같은 기능이라 생각하면 될듯
 */
class AddressInfoNotifier extends StateNotifier<AddressInfoState> {

  AddressInfoNotifier({
    required GetAllAddress getAllAddress,
    required StartAddressRepository repo,
  })
      : _getAllAddress = getAllAddress,
        _repo = repo,
        super(const AddressInfoState());

  final GetAllAddress _getAllAddress;
  final StartAddressRepository _repo;

  Future<void> fetchAddressInfo() async {
      final list = await _getAllAddress();
      state = state.copyWith(
          addresses: List.of(state.addressList)..addAll(list),
      );
  }

  Future<void> addAddressInput(AddressModel addressModel) async {
    if (state.addressList.length >= 4) {
      // 입력하고자 하는 출발지가 4이상이라면 -> 4이상으로는 생성이 불가능하다.
      state = state.copyWith(
        isMaxInput: true,
      );
    } else {
      // 아직 최대치 도달 x -> 출발지 입력 칸 생성이 가능하다.
      _repo.updateAddress(addressModel);
    }
    final list = await _getAllAddress();
    _logger.i('여기가 제일 문제인데... 확인 -> ${list}');
  }
}