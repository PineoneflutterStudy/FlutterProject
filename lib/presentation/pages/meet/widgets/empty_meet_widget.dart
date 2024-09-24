import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_colors.dart';

class EmptyMeetWidget extends StatelessWidget {

  const EmptyMeetWidget({
    super.key,
    required this.onBtnTap,
  });
  final void Function()? onBtnTap;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/mangmung_nothing.PNG',
            width: 230,
            height: 230,
          ),
          Center(
            child: Text(
              '정해진 약속이 없네요?\n버튼을 입력해서 약속을 정해봐요!',
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            // 제스처 감지
            onTap: onBtnTap,
            child: Icon(
              Icons.add_circle_sharp,
              color: AppColors.primary,
              size: 40,
            ),
          ),
        ],
    );
  }

}