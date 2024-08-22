part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.initialized(String location) = AddressInitialized;
  const factory AddressEvent.updated(String location) = AddressUpdated;
  const factory AddressEvent.setAddress(Address address) = SetAddressUpdated;
  const factory AddressEvent.filterUpdated(int radius, String sort) = FilterUpdated;
}