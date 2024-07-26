import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/address_model.dart';

enum AddressInfoStatus { initial, loading, success, failure }

class AddressInfoState extends Equatable {

  const AddressInfoState ({
    this.status = AddressInfoStatus.initial,
    this.addressList = const [],
    this.isMaxInput = true,
});

  final AddressInfoStatus status;
  final List<AddressModel> addressList;
  final bool isMaxInput;

  AddressInfoState copyWith({
    AddressInfoStatus? status,
    List<AddressModel>? addresses,
    bool? isMaxInput,
  }) {
    return AddressInfoState(
      status: status ?? this.status,
      addressList: addresses ?? this.addressList,
      isMaxInput: isMaxInput ?? this.isMaxInput,
    );
  }

  @override
  List<Object?> get props => [
    status,
    addressList,
    isMaxInput,
  ];

}