part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.loading() = AddressLoading;
  const factory AddressState.success(Address addressInfo) = AddressSuccess;
  const factory AddressState.error(ErrorResponse error) = AddressError;
}