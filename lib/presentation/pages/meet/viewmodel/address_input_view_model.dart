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

  /**
   * 주소지 검색으로 주소 업데이트
   */
  Future<void> updateAddress(int index, String address) async {
    await _startAddressRepository.updateAddress(index, address);
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  /**
   * X 버튼 입력으로 주소 지우기
   */
  Future<void> deleteAddress(int index) async {
    await _startAddressRepository.deleteAddress(index);
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  Future<void> removeAddress(int index) async {
    await _startAddressRepository.removeAddress(index);
    List<String> addressList = beforeAddress();
    for(int i = 0; i < addressList.length; i++) {
      await _startAddressRepository.updateAddress(i, addressList[i]);
    }
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

  List<String> beforeAddress()  {
    List<String> address = [];
    for (int i = 0; i < _addressList.length; i++) {
      address.add(_addressList[i].address);
    }
    return address;
  }
}
