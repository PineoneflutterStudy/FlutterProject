import 'dart:io';

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

  static ButtonStyle getMelonButtonStyle(bool isSelected) {
    return ElevatedButton.styleFrom(
      backgroundColor: isSelected ? AppColors.melon : AppColors.onPrimary,
      foregroundColor: isSelected ? AppColors.onPrimary : AppColors.melon // text color
    );
  }

  /// ## 전달된 이메일 형식 유효성 검사 후 결과를 반환한다.
  static bool isValidEmail(String email) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegExp.hasMatch(email);
  }

  /// ## 전달된 비밀번호 형식 유효성 검사 후 결과를 반환한다.
  static bool isValidPassword(String password) {
    bool isValidPassword = true;
    if (password.length < 8) {
      // 비밀번호는 최소 8자 이상이어야 합니다.
      isValidPassword = false;
    } else if (!(RegExp(r'[A-Z]').hasMatch(password) || RegExp(r'[a-z]').hasMatch(password))) {
      // 비밀번호에는 대문자 혹은 소문자가 포함되어야 합니다.
      isValidPassword = false;
    } else if (!RegExp(r'[0-9]').hasMatch(password)) {
      // 비밀번호에는 숫자가 포함되어야 합니다.
      isValidPassword = false;
    }
    /*else if (!RegExp(r'[!@#\$&*~]').hasMatch(password)) {
      // 비밀번호에는 특수 문자가 포함되어야 합니다.
    isValidPassword = false;
    }*/
    return isValidPassword;
  }

  /// ## *로 마스킹 처리된 이메일을 반환한다.
  static String maskEmail(String email) {
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

  final List<String> osList = [
    'AND', // OS - Android
    'IOS', // OS - IPhone
    'WIN', // OS - Window
    'ETC' // OS - etc...
  ];

  /// ## 현재 단말의 Os 정보를 가져온다.
  /// ### return -> AND / IOS / WIN / ETC
  String getOsInfo() {
    switch (Platform.operatingSystem) {
      case 'android':
        return osList[0];
      case 'ios':
        return osList[1];
      case 'windows':
        return osList[2];
      default:
        return osList[3];
    }
  }
}