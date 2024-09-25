import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/common/category.model.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../bloc/like_category/like_category_bloc.dart';
import '../../utils/filter_util.dart';
import 'like_place_item_widget.dart';

class LikePlaceWidget extends StatefulWidget with FilterUtil{

  final LikeState state;
  final List<Place> placeList;


  const LikePlaceWidget({
    super.key,
    required this.state,
    required this.placeList,
  });

  @override
  State<LikePlaceWidget> createState() => _LikePlaceWidgetState();
}

class _LikePlaceWidgetState extends State<LikePlaceWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (categorys, selected, regionName) => placeUI(context, categorys, selected, regionName),
          orElse: () => const SizedBox()
        );
      },
    );
  }

  Widget placeUI(BuildContext context, List<Category> categorys, Category selected, String regionName) {
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
                        child: Text(widget.parseResult(regionName),
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
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: widget.placeList.length,
                itemBuilder: (context, index) {
                  return LikePlaceItemWidget(
                    place: widget.placeList[index],
                    selected: selected,
                    regionName: regionName ?? '',
                  );
                },
              ),
            ),
          ],
        ),
    );
  }
}
