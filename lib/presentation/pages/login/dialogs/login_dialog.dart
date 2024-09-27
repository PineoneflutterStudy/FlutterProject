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
              children: [
                TextSpan(
                  text: "해당 계정($email)은 현재 시도한 로그인 방식과 연결되지 않았습니다. 다른 로그인 방법을 선택해 주세요.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan(
                  text: "\n\ntip: ",
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primary),
                ),
                TextSpan(
                  text: "로그인 방법을 추가하려면, 마이페이지의 내 정보에서 설정하실 수 있습니다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
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
