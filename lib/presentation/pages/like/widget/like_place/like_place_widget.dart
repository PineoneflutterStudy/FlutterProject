import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../bloc/like_place/like_place_bloc.dart';
import 'like_place_item_widget.dart';

class LikePlaceWidget extends StatefulWidget {

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          Visibility(
            visible: (widget.state == LikeState.filter) ? true : false,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 280,
                bottom: 8,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<LikePlaceBloc>()
                      .add(LikePlaceEvent.started());
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
                  child: Text('전체 보기',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: widget.placeList.length,
              itemBuilder: (context, index) {
                return LikePlaceItemWidget(place : widget.placeList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
