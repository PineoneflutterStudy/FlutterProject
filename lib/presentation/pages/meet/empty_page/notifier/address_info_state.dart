import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/address_model.dart';

enum AddressInfoStates { initial, loading, success, failure }

class AddressInfoState extends Equatable {

  const AddressInfoState ({
    this.status = AddressInfoStates.initial,
    this.addressList = const [],
});

  final AddressInfoStates status;
  final List<AddressModel> addressList;

  AddressInfoState copyWith({
    AddressInfoStates? status,
    List<AddressModel>? addresses,
  }) {
    return AddressInfoState(
      status: status ?? this.status,
      addressList: addresses ?? this.addressList,
    );
  }

  @override
  List<Object?> get props => [
    status,
    addressList,
  ];

}