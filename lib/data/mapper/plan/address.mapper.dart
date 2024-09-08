
import '../../../domain/model/display/plan/address.model.dart';
import '../../dto/display/address/address.dto.dart';

extension AddressX on AddressDto {
  Address toModel() {
    return Address(
      addressName: address_name ?? '',
      x: x ?? '',
      y: y ?? '',
    );
  }
}