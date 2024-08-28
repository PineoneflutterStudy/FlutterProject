import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/theme/constant/app_colors.dart';
import '../dialogs/start_address_input_dialog.dart';

/// ## 저장된 약속장소 내역이 없을떄 출력하는 Screen
/// ### Center 에 위치한 + 버튼 / 약속이 없는것을 알리는 간단한 문구
class EmptyMeetScreen extends StatelessWidget {
  const EmptyMeetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            // 제스처 감지
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => StartAddressInputDialog(),
              );
            },
            child: Icon(
              Icons.add_circle_sharp,
              color: AppColors.primary,
              size: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '정해진 약속이 없네요?\n버튼을 입력해서 약속을 정해봐요!',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
