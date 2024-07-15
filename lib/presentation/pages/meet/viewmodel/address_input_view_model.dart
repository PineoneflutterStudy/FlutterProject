import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/start_address_model.dart';
import '../../../../domain/repository/meet/start_address_repository.dart';

/**
 * 주소 검색 Dialog ViewModel
 */

class AddressInputViewModel extends ChangeNotifier {
  final StartAddressRepository _startAddressRepository;

  AddressInputViewModel(this._startAddressRepository);

  final Logger _logger = CustomLogger.logger; // 로그 출력

  List<StartAddressModel> _addressList = [];
  List<StartAddressModel> get addressList => _addressList;

  int _addressSize = 2;
  int get addressSize => _addressSize;

  String _toastMessage = '';
  String get toastMessage => _toastMessage;

  bool _emptyAddress = false;
  bool get emptyAddress => _emptyAddress;


  /**
   * 최초 진입 시 기본적으로 2개의 아이템을 제공해주도록...
   */
  Future<void> basicAddress() async {
    for (int i = 0; i < addressSize; i++) {
      final basicAddress = StartAddressModel(index: i, address: '', latitude: 0.0, longitude: 0.0);
      await _startAddressRepository.setAddress(basicAddress);
    }
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  /**
   * + 버튼 입력으로 출발지 입력을 늘릴때...
   */
  Future<void> addAddress(int index, String address, double latitude, double longitude) async {
    final newAddress = StartAddressModel(index: index, address: address, latitude: latitude, longitude: longitude);
    await _startAddressRepository.setAddress(newAddress);
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  /**
   * 주소지 검색으로 주소 업데이트
   */
  Future<void> updateAddress(int index, String address, double latitude, double longitude) async {
    await _startAddressRepository.updateAddress(index, address, latitude, longitude);
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

  /**
   * 출발지 입력 제거
   */
  Future<void> removeAddress(int index) async {
    await _startAddressRepository.removeAddress(index);
    List<StartAddressModel> addressList = beforeAddress();
    for(int i = 0; i < addressList.length; i++) {
      await _startAddressRepository.updateAddress(i, addressList[i].address, addressList[i].latitude, addressList[i].longitude);
    }
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  /**
   * + 버튼 입력으로 출발지 add
   */
  Future<void> isMaxAddAddress() async {
    if(_addressList.length >= 4) {
      _toastMessage = '최대 4명까지 입력 가능합니다!';
    } else {
      _addressSize++;
      addAddress(addressSize - 1,  '', 0.0, 0.0);
    }
    notifyListeners();
  }

  /**
   * 주소지가 비었는지 확인
   */
  Future<void> isEmptyAddress() async {
    int emptyCount = 0;
    for (int i = 0; i < addressList.length; i++) {
      if(addressList[i].address.isEmpty) {
        emptyCount++;
      }
    }
    emptyCount > 0 ? _emptyAddress = true : _emptyAddress = false;
    notifyListeners();
  }

  /**
   * Shared Preferences에 출발지 정보 저장하기
   */
  Future<void> saveAddressInfo() async {
    final prefs = await SharedPreferences.getInstance();

    List<String> indexList = []; // index
    List<String> startAddressList = []; // 출발지
    List<String> latitudeList = []; // 위도
    List<String> longitudeList = []; // 경도

    for (int i = 0; i < addressList.length; i++) {
      indexList.add(addressList[i].index.toString());
      startAddressList.add(addressList[i].address);
      latitudeList.add(addressList[i].latitude.toString());
      longitudeList.add(addressList[i].longitude.toString());
      _logger.i('저장 성공');
    }

    await prefs.setStringList("indexList", indexList); // index
    await prefs.setStringList("addressList", startAddressList); // 주소(출발지 정보)
    await prefs.setStringList("latitudeList", latitudeList); // 위도
    await prefs.setStringList("longitudeList", longitudeList); // 경도


    _logger.i('인덱스값 확인 -> ${prefs.getStringList("indexList")}');
    _logger.i('주소값 확인 -> ${prefs.getStringList("addressList")}');
    _logger.i('위도값 확인 -> ${prefs.getStringList("latitudeList")}');
    _logger.i('경도값 확인 -> ${prefs.getStringList("longitudeList")}');
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

  List<StartAddressModel> beforeAddress()  {
    List<StartAddressModel> address = [];
    for (int i = 0; i < _addressList.length; i++) {
      address.add(_addressList[i]);
    }
    return address;
  }
}
