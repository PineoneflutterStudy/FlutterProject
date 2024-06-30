import 'package:flutter/material.dart';

class StartPositionBottomSheetProvider with ChangeNotifier {
  bool _canPop = true;

  bool get canPop => _canPop;

  void setCanPop(bool value) {
    _canPop = value;
    notifyListeners();
  }
}