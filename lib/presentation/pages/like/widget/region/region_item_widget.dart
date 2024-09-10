import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/like/region.dart';
import '../../../../../domain/model/display/like/region_select.dart';
import '../../bloc/region_filter_bloc.dart';

class RegionItemWidget extends StatelessWidget {

  final RegionStatus state;
  final RegionModel regionModel;
  final RegionSelectModel selectModel;

  const RegionItemWidget({
    super.key,
    required this.state,
    required this.regionModel,
    required this.selectModel,
  });

  void _select(BuildContext context) {
    switch(state) {
      case RegionStatus.showMajor: {
        context.read<RegionFilterBloc>()
            .add(RegionFilterEvent.major(regionModel.cd, selectModel.copyWith(major: regionModel.addr, current: 2)));
      }
      case RegionStatus.showMiddle: {
        context.read<RegionFilterBloc>()
            .add(RegionFilterEvent.middle(regionModel.cd, selectModel.copyWith(middle: regionModel.addr, current:  3)));
      }
      case RegionStatus.showMinor:
      case RegionStatus.finish: {
        context.read<RegionFilterBloc>()
            .add(RegionFilterEvent.minor( selectModel.copyWith(minor: regionModel.addr, current: 4)));
      }
      default: {
        print('nothing');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.onPrimary,
      borderOnForeground: true,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: AppColors.surfaceVariant, width: 0.5),
        ),
        color: AppColors.white,
        child: InkWell(
          onTap: () => {
            print('아이템 눌림 -> ${regionModel.cd} / ${regionModel.addr}'),
            _select(context),
          },
          highlightColor: AppColors.secondary,
          splashColor: AppColors.secondary,
          customBorder: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(30.0),
          ),
          child: Center(
            child: Text(
              regionModel.addr,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
