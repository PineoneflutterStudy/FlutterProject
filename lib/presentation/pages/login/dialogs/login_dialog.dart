import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_colors.dart';

/// ## 로그인 팝업
///
/// author [Eogeum@naver.com]
class LoginDialog {
  /// 이메일 중복 팝업을 노출한다.
  static showEmailDuplicateDialog(BuildContext context, String email) => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontFamily: 'Dongle'),
              children: [
                TextSpan(
                  text: "해당 계정($email)은\n현재 시도한 로그인 방식과 연결되지 않았습니다.\n다른 로그인 방법을 선택해 주세요.",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "\n\ntip: ",
                  style: TextStyle(color: AppColors.primary),
                ),
                TextSpan(
                  text: "마이페이지의 내 정보에서 로그인 방법을 추가하실 수 있습니다.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("확인"),
            ),
          ],
        ),
      );
}
