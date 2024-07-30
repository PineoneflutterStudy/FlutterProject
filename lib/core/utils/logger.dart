import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';

class CustomLogger {
  static final Logger logger = Logger(filter: CustomLogFilter());
}

class CustomLogFilter extends LogFilter {
  static const bool _isLogEnabled = true;
  final bool _hideDebugLog = (FlutterConfig.get('BUILD_TYPE') ?? '') == 'release';

  @override
  bool shouldLog(LogEvent event) {
    if (!_isLogEnabled) {
      return false;
    }

    var shouldLog = false;
    if (_hideDebugLog && event.level.value == Level.debug) {
      shouldLog = false;
    } else if (event.level.value >= level!.value) {
      shouldLog = true;
    }

    return shouldLog;
  }
}
