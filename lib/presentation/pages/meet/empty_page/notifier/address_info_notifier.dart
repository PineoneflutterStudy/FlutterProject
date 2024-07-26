import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
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

  /**
   * Fetch Address Update
   */
  Future<void> fetchAddressInfo() async {
    state = state.copyWith(status: AddressInfoStatus.loading);

      final list = await _getAllAddress();
      state = state.copyWith(
        status: AddressInfoStatus.success,
          addresses: List.of(state.addressList)..addAll(list),
      );
  }

  /**
   * Update Address Input Line
   */
  Future<void> addAddressInput(AddressModel addressModel) async {
    state = state.copyWith(status: AddressInfoStatus.loading);

    bool isAddAddress = await _repo.updateAddress(addressModel);

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressInfoStatus.success,
      addresses: List.from(list),
      isMaxInput: isAddAddress,
    );
  }

  Future<void> addEmptyAddress(int index) async {
    state = state.copyWith(status: AddressInfoStatus.loading);

    bool isAddAddress = await _repo.updateAddress(AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0));

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressInfoStatus.success,
      addresses: List.from(list),
      isMaxInput: isAddAddress,
    );
  }

  Future<void> deleteAddress(int index) async {
    state = state.copyWith(status: AddressInfoStatus.loading);

    await _repo.deleteAddress(AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0));

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressInfoStatus.success,
      addresses: List.from(list),
    );
  }

  Future<void> deleteAddressInput(int index) async {
    state = state.copyWith(status: AddressInfoStatus.loading);

    bool isDeleteAddress = await _repo.deleteAddressInput(index);

    final list = await _getAllAddress();
    state = state.copyWith(
      status: AddressInfoStatus.success,
      addresses: List.from(list),
      isMaxInput: isDeleteAddress,
    );
  }

  Future<void> resetAddress() async {
    await _repo.resetAddress();
  }
}