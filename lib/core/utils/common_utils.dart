import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theme/constant/app_colors.dart';

/**
 * 공통 토스트 메시지
 */
class CommonUtils {
  static void showToastMsg(String msg) {
    Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM, backgroundColor: AppColors.secondary,
      textColor: AppColors.contentTertiary, fontSize: 16.0);
  }

  static ButtonStyle getYellowButtonStyle(bool isSelected) {
    return ElevatedButton.styleFrom(
      backgroundColor: isSelected ? AppColors.primaryContainer : AppColors.onPrimary,
      foregroundColor: isSelected ? AppColors.onPrimary : AppColors.primaryContainer // text color
    );
  }

  /// ## *로 마스킹 처리된 이메일을 반환한다.
  String maskEmail(String email) {
    // 이메일 주소를 @ 기준으로 나눔
    List<String> parts = email.split('@');
    if (parts.length != 2) {
      return email; // 이메일 형식이 올바르지 않은 경우 원본 반환
    }

    // 첫 번째 부분(이메일 아이디)에서 앞 3글자만 남기고 나머지를 *로 대체
    String idPart = parts[0];
    String domainPart = parts[1];
    String maskedIdPart = '${idPart.substring(0, 3)}****';

    // 마스킹된 이메일 반환
    return '$maskedIdPart@$domainPart';
  }
}