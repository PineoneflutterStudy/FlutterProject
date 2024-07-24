import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/address_model.dart';

final Logger _logger = CustomLogger.logger;
final String listSaveName = "addressList";

List<AddressModel> defaultAddress = [
  AddressModel(index: 0, address: '', latitude: 0.0, longitude: 0.0),
  AddressModel(index: 1, address: '', latitude: 0.0, longitude: 0.0),
];

abstract class LocalPrefsStorage {
  Future<void> setDefaultAddress();
  Future<List<AddressModel>> getAddressList();
  Future<void> updateAddress(AddressModel addressModel);
  Future<void> deleteAddress(AddressModel addressModel);
  Future<void> resetAddress();
  Future<void> removeAddress(int index);

}

class LocalPrefsStorageImpl implements LocalPrefsStorage {
  final SharedPreferences _sharedPref;

  LocalPrefsStorageImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPref = sharedPreferences;

  /**
   * Create
   * 저장된 출발지 정보가 없음 -> Default 출발지 정보 생성
   * index 정보만 존재하는 defaultAddress 정보 저장
   */
  @override
  Future<void> setDefaultAddress() async {
    List<String> address = [];
    for (int i = 0; i < defaultAddress.length; i++) {
      address.add(jsonEncode(defaultAddress[i].toJson()));
    }
    await _sharedPref.setStringList(listSaveName, address); // index
    _logger.i('저장 성공');
  }

  /**
   * Read
   * 저장되어 있는 출발지 정보 획득
   */
  @override
  Future<List<AddressModel>> getAddressList() async {
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    if (addressInfo.isNotEmpty ) {
      List<AddressModel> addressInfoList = [];
      for (int i = 0; i < addressInfo.length; i++) {
        var addressMap = jsonDecode(addressInfo[i]);
        var getAddress = AddressModel.fromJson(addressMap);
        addressInfoList.add(getAddress);
      }
      _logger.i('SharedPreference Init Data is => ${addressInfoList.toString()}');
      return addressInfoList;
    } else {
      _logger.e('SharedPreference Init Data is empty....!');
      return List.empty();
    }
  }

  /**
   * Update
   * 출발지 정보 업데이트 ( add / update )
   */

  @override
  Future<void> updateAddress(AddressModel addressModel) async {
    _logger.i('업데이트 전 값 확인 -> ${addressModel.toString()}');
    // 현재 저장되어 있는 출발지 정보 리스트 획득
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    List<int> currentIndex = [];
    int updateIndex = addressModel.index; // Update 또는 Add를 진행할 index 정보

    _logger.i('인덱스 값은?? -> ${updateIndex}');

    List<String> addressInfoList = []; // 
    for(int i = 0; i < addressInfo.length; i++) {
      var addressMap = jsonDecode(addressInfo[i]);
      AddressModel getAddress = AddressModel.fromJson(addressMap);
      currentIndex.add(getAddress.index);
      if (getAddress.index == updateIndex) {
        // 동일한 index 존재한다면 새로운 Model Update
        addressInfoList.add(jsonEncode(addressModel.toJson()));
      } else {
        addressInfoList.add(jsonEncode(getAddress.toJson()));
      }
    }
    
    // 기존에 있던 정보 업데이트 및 get이 종료 후 없던 index라 추가가 필요할때는...
    if (!currentIndex.contains(updateIndex)) { // 저장된 model의 길이보다 updateIndex값이 크다면 => 신규 정보 update
      _logger.i('인덱스 값은?? -> ${updateIndex} 포함된게 없으니까 여기 들어왔겠찌?');
      addressInfoList.add(jsonEncode(addressModel.toJson()));
    }  
    
    // 모든 업데이트 동작이 완료 되었다면 값 저장
    await _sharedPref.setStringList(listSaveName, addressInfoList); // index
    _logger.i('update Address Success -> ${addressInfoList.toString()}');
  }

  /**
   * Delete
   * x 버튼 입력으로 주소 지우기
   */
  @override
  Future<void> deleteAddress(AddressModel addressModel) async {
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    int targetIndex = addressModel.index;

    List<String> addressInfoList = []; //
    for(int i = 0; i < addressInfo.length; i++) {
      var addressMap = jsonDecode(addressInfo[i]);
      AddressModel getAddress = AddressModel.fromJson(addressMap);
      if (getAddress.index == targetIndex) {
        // 동일한 index 존재한다면 해당 값 초기화 후 저장
        addressInfoList.add(jsonEncode(addressModel.toJson()));
      } else {
        addressInfoList.add(jsonEncode(getAddress.toJson()));
      }
    }

    await _sharedPref.setStringList(listSaveName, addressInfoList); // index
    _logger.i('delete Address Success');

  }

  /**
   * Shared Preference 데이터 초기화
   */
  @override
  Future<void> resetAddress() async {
    await _sharedPref.remove(listSaveName);
  }

  @override
  Future<void> removeAddress(int index) async {

  }
}