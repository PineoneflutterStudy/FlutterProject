import 'package:flutter/cupertino.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

import '../../../../domain/model/display/meet/start_address_model.dart';
import '../../../../domain/repository/meet/start_address_repository.dart';

/**
 * 약속 중간지점 구하기 Screen ViewModel
 */
class MeetPlaceMapViewModel extends ChangeNotifier {
  final StartAddressRepository _startAddressRepository;

  MeetPlaceMapViewModel(this._startAddressRepository);

  int markerWidth = 20;
  int markerHeight = 20;

  // 출발지 주소 리스트
  List<StartAddressModel> _addressList = [];

  List<StartAddressModel> get addressList => _addressList;

  String _apiKey = '';

  String get apiKey => _apiKey;

  Set<Marker> _mapMarkers = {};

  Set<Marker> get mapMarkers => _mapMarkers;

  Future<void> setAddressInfo(List<StartAddressModel> list) async {
    for (int i = 0; i < list.length; i++) {
      await _startAddressRepository.setAddress(list[i]);
    }
    _addressList = await _startAddressRepository.getAllAddress();
    notifyListeners();
  }

  Future<void> setMarkers() async {
    for (int i = 0; i < addressList.length; i++) {
      _mapMarkers.add(Marker(
        markerId: addressList[i].index.toString(),
        latLng: LatLng(addressList[i].latitude, addressList[i].longitude),
        width: markerWidth,
        height: markerHeight,
      ));
    }
    notifyListeners();
  }
}
