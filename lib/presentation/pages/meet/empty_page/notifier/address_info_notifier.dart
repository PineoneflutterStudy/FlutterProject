import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/usecase/meet/get_all_address.dart';
import '../../providers.dart';
import 'address_info_state.dart';

final addressInfoStateProvider =
StateNotifierProvider<AddressInfoNotifier, AddressInfoState>(
        (ref) => AddressInfoNotifier(
            getAllAddress: ref.read(getAllAddressProvider),
        )
);

class AddressInfoNotifier extends StateNotifier<AddressInfoState> {

  AddressInfoNotifier({
    required GetAllAddress getAllAddress,
  })
      : _getAllAddress = getAllAddress,
        super(const AddressInfoState());

  final GetAllAddress _getAllAddress;

  Future<void> fetchAddressInfo() async {
      state = state.copyWith(status: AddressInfoStates.loading);

      final list = await _getAllAddress();
      state = state.copyWith(
          status: AddressInfoStates.loading,
          addresses: List.of(state.addressList)..addAll(list),
      );
  }
}