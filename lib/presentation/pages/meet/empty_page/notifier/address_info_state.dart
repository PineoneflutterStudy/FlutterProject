import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/address_model.dart';

class AddressInfoState extends Equatable {

  const AddressInfoState ({
    this.addressList = const [],
    this.isMaxInput = true,
});

  final List<AddressModel> addressList;
  final bool isMaxInput;

  AddressInfoState copyWith({
    List<AddressModel>? addresses,
    bool? isMaxInput,
  }) {
    return AddressInfoState(
      addressList: addresses ?? this.addressList,
      isMaxInput: isMaxInput ?? this.isMaxInput,
    );
  }

  @override
  List<Object?> get props => [
    addressList,
    isMaxInput,
  ];

}