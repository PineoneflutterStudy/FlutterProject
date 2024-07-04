import 'package:flutter/material.dart';

import '../../../../domain/model/meet/start_address_model.dart';
import '../../../../domain/repository/meet/start_address_repository.dart';

class AddressInputViewModel extends ChangeNotifier {
  final StartAddressRepository _startAddressRepository;

  AddressInputViewModel(this._startAddressRepository);

  List<StartAddressModel> _addressList = [];
  List<StartAddressModel> get addressList => _addressList;

  int _addressSize = 2;
  int get addressSize => _addressSize;

  /**
   * 최초 진입 시 기본적으로 2개의 아이템을 제공해주도록...
   */
  Future<void> basicAddress() async {
    for (int i = 0; i < addressSize; i++) {
      final basicAddress = StartAddressModel(index: i, address: '');
      await _startAddressRepository.setAddress(basicAddress);
    }
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  /**
   * + 버튼 입력으로 출발지 입력을 늘릴때...
   */
  Future<void> addAddress(int index, String address) async {
    final newAddress = StartAddressModel(index: index, address: address);
    await _startAddressRepository.setAddress(newAddress);
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  // AddresssSize 증가
  void addAddressSize() {
    _addressSize++;
    notifyListeners();
  }

  void decAddressSize() {
    _addressSize--;
    notifyListeners();
  }

}