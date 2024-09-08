import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/error/error_response.dart';

class CommonDialog {
  CommonDialog();

  //Todo: error Code에 따른 Message 정의 필요
  static Future<bool?> errorDialog(BuildContext context, ErrorResponse? error) {
    return showDialog<bool>(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: SizedBox(
              height: 70,
              child: Column(
                children: [
                  Text('${error?.message ?? '서비스 오류'}'),
                  Text('[${error?.code ?? '에러가 발생했습니다. 다시 시도해주세요.'}]')
                ],
              ),
            ),
            actions: [
              ElevatedButton(onPressed: () => context.pop(true), child: Text('다시 시도')),
              ElevatedButton(onPressed: () => exit(0), child: Text('종료'))
            ],
          );
        });
  }

  /// ## Confirm Dialog
  /// ### @param
  /// #### 1. context - BuildContext
  /// #### 2. title - 타이틀
  /// #### 3. content - 내용
  /// #### 4. btn1Text - 버튼 1 text ( [ 좌 ] 버튼 )
  /// #### 5. btn2Text - 버튼 2 text ( [ 우 ] 버튼 )
  /// #### 6. onBtn1Pressed - 버튼 1 입력 ( 사용 화면에서 제어 )
  /// #### 7. onBtn2Pressed - 버튼 2 입력 ( 사용 화면에서 제어 )
  static Future<void> confirmDialog({
    required BuildContext context,
    required String title,
    String? content,
    required String btn1Text,
    required String btn2Text,
    required Function(BuildContext) onBtn1Pressed,
    required Function(BuildContext) onBtn2Pressed,
  }) {
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$title',
                  style: TextStyle(fontSize: 25, height: 1, fontWeight: FontWeight.bold),
                ),
                if (content?.isNotEmpty == true)
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text('$content',
                      style: TextStyle(fontSize: 18, color: AppColors.contentFourth, height: 1),
                    ),
                  )
              ],
            ),
          ),
          actions: [
            ElevatedButton(
                onPressed: () => onBtn1Pressed(_),
                child: Text(btn1Text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () => onBtn2Pressed(_),
                child: Text(btn2Text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ))
          ],
        );
      },
    );
  }
}
