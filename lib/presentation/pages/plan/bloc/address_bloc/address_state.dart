part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  factory AddressState({
    @Default(Status.initial) Status status,
    @Default(Address(addressName: '', x: '', y: '',radius: 10000,sort: 'distance')) Address addressInfo,
    ErrorResponse? error,
  }) = _AddressState;
}