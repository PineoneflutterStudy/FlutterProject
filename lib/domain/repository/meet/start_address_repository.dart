import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/logger.dart';
import '../../model/display/meet/meet_address.model.dart';
import '../../model/display/meet/tour_location.model.dart';

part 'start_address_repository.g.dart';

/// ## 출발지 데이터(임시) SharedPreferences 사용을 위한 Repository

final Logger _logger = CustomLogger.logger;
final String listSaveName = "addressList"; // 출발지 List
final String destinationSaveName = "destination"; // 목적지

List<MeetAddressModel> defaultAddress = [
  MeetAddressModel(index: 0, address: '', latitude: 0.0, longitude: 0.0, totalDistance: 0, totalDuration: 0),
  MeetAddressModel(index: 1, address: '', latitude: 0.0, longitude: 0.0, totalDistance: 0, totalDuration: 0),
];

@riverpod
AddressShrefRepository startAddressRepository(StartAddressRepositoryRef ref) {
  return AddressShrefRepositoryImpl();
}

abstract class AddressShrefRepository {
  Future<List<MeetAddressModel>> getAllAddress();
  Future<void> setDefaultData();
  Future<void> updateAddress(MeetAddressModel addressModel);
  Future<void> deleteAddress(MeetAddressModel addressModel);
  Future<void> deleteAddressInput(int index);
  Future<void> resetAddress();
  Future<void> setDestination(TourLocationModel tourDto);
  Future<TourLocationModel?> getDestination();
}

class AddressShrefRepositoryImpl implements AddressShrefRepository {
  late SharedPreferences _sharedPref;
  AddressShrefRepositoryImpl() {
    _initSharedPreferences();
  }
  Future<void> _initSharedPreferences() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  /// ## { Read } 저장되어 있는 출발지 정보 획득
  @override
  Future<List<MeetAddressModel>> getAllAddress() async {
    await _initSharedPreferences();
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    if (addressInfo.isNotEmpty ) {
      List<MeetAddressModel> addressInfoList = [];
      for (int i = 0; i < addressInfo.length; i++) {
        var addressMap = jsonDecode(addressInfo[i]);
        var getAddress = MeetAddressModel.fromJson(addressMap);
        addressInfoList.add(getAddress);
      }
      _logger.i('SharedPreference Init Data is => ${addressInfoList.toString()}');
      return addressInfoList;
    } else {
      _logger.e('SharedPreference Init Data is empty....!');
      return List.empty();
    }
  }

  /// ## { Create } 저장된 출발지 정보가 없음 -> Default 출발지 정보 생성
  @override
  Future<void> setDefaultData() async { // 디폴트 값 세팅
    List<String> address = [];
    await _initSharedPreferences();
    for (int i = 0; i < defaultAddress.length; i++) {
      address.add(jsonEncode(defaultAddress[i].toJson()));
    }
    await _sharedPref.setStringList(listSaveName, address); // index
    _logger.i('Default Address Setting Success');
  }

  /// ## { Update } 출발지 정보 업데이트 ( add / update )
  @override
  Future<void> updateAddress(MeetAddressModel addressModel) async {
    await _initSharedPreferences();
    _logger.i('Confirm Date(Before Update..) -> ${addressModel.toString()}');
    // 현재 저장되어 있는 출발지 정보 리스트 획득
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    List<int> currentIndex = [];
    int updateIndex = addressModel.index; // Update 또는 Add를 진행할 index 정보

    List<String> addressInfoList = [];
    for(int i = 0; i < addressInfo.length; i++) {
      var addressMap = jsonDecode(addressInfo[i]);
      MeetAddressModel getAddress = MeetAddressModel.fromJson(addressMap);
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
      addressInfoList.add(jsonEncode(addressModel.toJson()));
    }

    // 모든 업데이트 동작이 완료 되었다면 값 저장
    await _sharedPref.setStringList(listSaveName, addressInfoList); // index
    _logger.i('update Address Success -> ${addressInfoList.toString()}');
  }

  /// ## { Delete } X 버튼으로 입력된  주소 정보 Delete
  @override
  Future<void> deleteAddress(MeetAddressModel addressModel) async {
    await _initSharedPreferences();
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    int targetIndex = addressModel.index;

    List<String> addressInfoList = []; //
    for(int i = 0; i < addressInfo.length; i++) {
      var addressMap = jsonDecode(addressInfo[i]);
      MeetAddressModel getAddress = MeetAddressModel.fromJson(addressMap);
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

  /// ## { Delete } - 버튼으로 주소 입력 Line Delete
  @override
  Future<void> deleteAddressInput(int index) async {
    await _initSharedPreferences();
    // 기존 데이터 가져온 후 -> 해당 index 정보 삭제 -> index 재구성 -> 새로 저장
    List<String> addressInfo = _sharedPref.getStringList(listSaveName) ?? [];
    int updateIndexNum = 0;

    List<String> addressInfoList = [];
    for(int i = 0; i < addressInfo.length; i++) {
      var addressMap = jsonDecode(addressInfo[i]);
      MeetAddressModel getAddress = MeetAddressModel.fromJson(addressMap);
      if (getAddress.index != index) {
        // 동일한 index 존재한다면 해당 값 초기화 후 저장
        MeetAddressModel updateModel = MeetAddressModel(
            index: updateIndexNum++,
            address: getAddress.address,
            latitude: getAddress.latitude,
            longitude: getAddress.longitude,
            totalDuration: getAddress.totalDuration,
            totalDistance: getAddress.totalDistance
        );
        addressInfoList.add(jsonEncode(updateModel.toJson()));
      }

    }

    await _sharedPref.setStringList(listSaveName, addressInfoList); // index
    _logger.i('delete Address Success');
  }

  /// ##{ All Delete } Shared Preference 데이터 초기화
  Future<void> resetAddress() async {
    await _initSharedPreferences();
    await _sharedPref.remove(listSaveName); // 출발지 정보 Reset
    await _sharedPref.remove(destinationSaveName); // 목적지 정보 Reset
  }

  /// ## { Create } 목적지 정보 생성
  @override
  Future<void> setDestination(TourLocationModel tourDto) async {
    await _initSharedPreferences();

    final model = jsonEncode(tourDto.toJson());
    await _sharedPref.setString(destinationSaveName, model); // index
    _logger.i('Destination Setting Success');
  }

  /// ## { Read } 저장되어 있는 목적지 정보 가져오기
  @override
  Future<TourLocationModel?> getDestination() async {
    await _initSharedPreferences();
    final destinationInfo = _sharedPref.getString(destinationSaveName) ?? '';

    if (destinationInfo.isEmpty) {
      return null;
    }

    var destinationMap = jsonDecode(destinationInfo);
    var getDestinationMap = TourLocationModel.fromJson(destinationMap);

    return getDestinationMap;
  }

}