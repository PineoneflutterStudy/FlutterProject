import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/address_model.dart';

enum AddressShprfStatus { initial, loading, success, failure }

class AddressShprfState extends Equatable {

  const AddressShprfState ({
    this.status = AddressShprfStatus.initial,
    this.addressList = const [],
    this.isMaxInput = true,
    this.isDataSaved = '',
  });

  final AddressShprfStatus status;
  final List<AddressModel> addressList;
  final bool isMaxInput;
  final String isDataSaved;

  AddressShprfState copyWith({
    AddressShprfStatus? status,
    List<AddressModel>? addresses,
    bool? isMaxInput,
    String? isDataSaved,
  }) {
    return AddressShprfState(
      status: status ?? this.status,
      addressList: addresses ?? this.addressList,
      isMaxInput: isMaxInput ?? this.isMaxInput,
      isDataSaved:  isDataSaved ?? this.isDataSaved,
    );
  }

  @override
  List<Object?> get props => [
    status,
    addressList,
    isMaxInput,
    isDataSaved,
  ];

}