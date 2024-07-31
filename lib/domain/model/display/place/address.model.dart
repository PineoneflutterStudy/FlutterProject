import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.model.freezed.dart';
part 'address.model.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String addressName,
    required String x,
    required String y,
    int? radius,
    String? sort,
  }) = _Address;



  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}