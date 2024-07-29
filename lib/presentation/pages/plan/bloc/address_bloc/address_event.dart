part of 'address_bloc.dart';

abstract class AddressEvent{
  const AddressEvent();
}

class AddressInitialized extends AddressEvent{
  final String location;
  AddressInitialized(this.location);
}