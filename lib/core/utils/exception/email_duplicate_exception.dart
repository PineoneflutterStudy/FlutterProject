import '../common_utils.dart';
import '../logger.dart';

/// ## 이메일 중복 Exception
///
/// author [Eogeum@naver.com]
class EmailDuplicateException implements Exception {
  final String email;
  final String providers;

  EmailDuplicateException(this.email, this.providers);

  @override
  String toString() {
    final String tempEmail = CustomLogger.isDebugLogHidden ? CommonUtils().maskEmail(email) : email;
    return 'EmailDuplicateException: email = $tempEmail, providers = $providers';
  }
}
