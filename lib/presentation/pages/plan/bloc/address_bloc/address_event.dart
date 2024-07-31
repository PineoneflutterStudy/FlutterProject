part of 'address_bloc.dart';

abstract class AddressEvent{
  const AddressEvent();
}

class AddressInitialized extends AddressEvent{
  final String location;
  AddressInitialized(this.location);
}

class AddressUpdated extends AddressEvent{
  final String location;
  AddressUpdated(this.location);
}

class FilterUpdated extends AddressEvent {
  final int radius;
  final String sort;
  const FilterUpdated(this.radius, this.sort);
}