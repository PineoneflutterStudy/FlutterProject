import 'package:fluttertoast/fluttertoast.dart';

import '../theme/constant/app_colors.dart';

/**
 * 공통 토스트 메시지
 */
class Utils {
  static void showToastMsg(String msg) {
    Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM, backgroundColor: AppColors.secondary,
      textColor: AppColors.contentTertiary, fontSize: 16.0);
  }
}