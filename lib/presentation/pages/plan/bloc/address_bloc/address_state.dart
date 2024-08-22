part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.loading() = Loading;
  const factory AddressState.success(Address addressInfo) = _Success;
  const factory AddressState.error(ErrorResponse error) = _Error;
}