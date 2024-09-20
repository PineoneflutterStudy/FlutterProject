import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../bloc/like_place/like_place_bloc.dart';

class LikePlaceEmptyPage extends StatelessWidget {

  final LikeState state;
  final String ctgrId;

  LikePlaceEmptyPage({
    Key? key,
    required this.state,
    required this.ctgrId,
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
          SizedBox(
            height: 10,
          ),
          Visibility(
            visible: (state == LikeState.filter) ? true : false,
            child: IconButton(
              onPressed: () {
                context.read<LikePlaceBloc>()
                    .add(LikePlaceEvent.started(''));
              },
              icon: Icon(Icons.refresh_rounded,
                color: AppColors.black,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
