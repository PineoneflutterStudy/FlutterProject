import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../login/login_page.dart';
import '../bloc/login/login_check_bloc.dart';

class LikePlaceEmptyPage extends StatelessWidget {

  LikePlaceEmptyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('관심 등록된 장소가 없습니다.',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text('(\'나만의 여행플래너\' 탭에서 관심 장소를 선택해주세요.)',
            style: TextStyle(
              color: AppColors.onSurfaceVariant,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
