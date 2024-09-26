import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/common_utils.dart';

/// ## 종료 안내 위젯
/// 2초 내 뒤로 가기 두 번 입력해야 종료되도록 적용된 위젯
///
/// author [Eogeum@naver.com]
class DoubleBackToExitWidget extends StatefulWidget {
  final Widget child;

  const DoubleBackToExitWidget({required this.child});

  @override
  State<StatefulWidget> createState() => _DoubleBackToExitState();
}

class _DoubleBackToExitState extends State<DoubleBackToExitWidget> {
  DateTime? _lastPressedTime;
  bool _canPop = false;

  @override
  Widget build(BuildContext context) => PopScope(
        child: widget.child,
        canPop: _canPop,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }

          final DateTime now = DateTime.now();
          if (_lastPressedTime == null || now.difference(_lastPressedTime!) > Duration(seconds: 2)) {
            _lastPressedTime = now;
            CommonUtils.showToastMsg('앱을 종료하려면 한 번 더 눌러주세요.');
            setState(() => _canPop = false);
            return;
          } else {
            setState(() => _canPop = true);
          }
        },
      );
}
