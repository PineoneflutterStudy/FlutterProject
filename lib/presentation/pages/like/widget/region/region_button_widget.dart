import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/like/region_select.dart';
import '../../bloc/like_place/like_place_bloc.dart';
import '../../utils/filter_util.dart';

class RegionButtonWidget extends StatelessWidget with FilterUtil {

  final RegionSelectModel selectModel;

  const RegionButtonWidget({
    super.key,
    required this.selectModel,
  });

  String _onSelectDataParser() {
    String major = parseMajorAddress(selectModel.major);
    String middle = parseMiddleAddress(selectModel.middle);
    String minor = parseMinorAddress(selectModel.minor);

    List<String> result = [major, middle, minor];

    result.removeWhere((index) => index.isEmpty);

    return result.join(' ');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikePlaceBloc, LikePlaceState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () =>
          {
            Navigator.pop(context, _onSelectDataParser()),
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: AppColors.onSurfaceVariant, width: 0.5),
            ),
            child: Center(
              child: Icon(Icons.check_rounded,
                size: 50,
                color: AppColors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
