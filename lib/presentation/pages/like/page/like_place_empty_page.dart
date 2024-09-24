import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../domain/model/display/common/category.model.dart';
import '../bloc/like_category/like_category_bloc.dart';
import '../utils/filter_util.dart';

class LikePlaceEmptyPage extends StatelessWidget with FilterUtil {

  final LikeState state;
  final String ctgrId;

  LikePlaceEmptyPage({
    Key? key,
    required this.state,
    required this.ctgrId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (categorys, selected, regionName) => emptyUI(context, categorys, selected, regionName),
            orElse: () => const SizedBox(),
          );
        }
    );
  }

  Widget emptyUI(BuildContext context, List<Category> categorys, Category selected, String regionName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          Visibility(
            visible: (regionName.isNotEmpty) ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.primary, width: 1.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  15.0),
                      child: Text(parseResult(regionName),
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LikeCategoryBloc>()
                          .add(LikeCategoryEvent.setCategorySelected(categorys, selected, ''));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        surfaceTintColor: AppColors.primary,
                        foregroundColor: AppColors.black,
                        overlayColor: AppColors.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    ),
                    child: Center(
                      child: Text('필터 해제',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/mangmung_nothing.PNG',
                  width: 230,
                  height: 230,
                ),
                Text('관심 등록된 장소가 없습니다.',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('(\'나만의 여행플래너\' 탭에서 관심 장소를 선택해주세요.)',
                  style: TextStyle(
                    color: AppColors.onSurfaceVariant,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
