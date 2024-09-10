import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_team1/presentation/pages/like/widget/region/region_item_widget.dart';
import 'package:flutter_project_team1/presentation/pages/like/widget/region/region_list_widget.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../data/data_source/api/region/region_impl_api.dart';
import '../../../../../domain/model/display/like/region.dart';
import '../../../../../domain/model/display/like/region_list.dart';
import '../../../../../domain/model/display/like/region_select.dart';
import '../../../../../domain/repository/like/region_repository.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/region_filter_bloc.dart';
import '../common/like_loading_page.dart';
import 'region_select_widget.dart';

class RegionWidget extends StatelessWidget {
  final RegionRepository repository = RegionRepository(RegionImplApi());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        RegionFilterBloc(repository: repository)
          ..add(RegionFilterEvent.started()),
      child: BlocConsumer<RegionFilterBloc, RegionFilterState>(
        builder: (context, state) {
          switch(state.status) {
            case RegionStatus.initial: return LikeLoadingPage();
            default: return setUI(state.status, state.model, state.select);
          }
        },
        listener: (context, state) {
          switch(state.status) {
            // case RegionStatus.finish: {
            //   final result = state.se
            // }
            //   => _returnResult(context, result);
            default: _nothing();
          }
        },
      ),
    );
  }

  Scaffold setUI(RegionStatus state, RegionListModel region, RegionSelectModel select) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MainAppbar(
        title: '장소 필터',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: RegionSelectWidget(
                selectModel: select,
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 8,
              child: Container(
                margin: EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: AppColors.onSurfaceVariant, width: 0.5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RegionListWidget(
                      state: state,
                      region: region,
                      select: select,
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  /**
   *  Method
   */

  String selectedResult(RegionFilterState state) {
    switch(state.status) {
      case RegionStatus.showMiddle:
      case RegionStatus.showMinor:
      {
        String selectedRegion = '';

        if (state.select!.major != null) {
          selectedRegion += state.select!.major!;
        }

        if (state.select!.middle != null) {
          selectedRegion += state.select!.middle!;
        }

        if (state.select!.minor != null) {
          selectedRegion += state.select!.minor!;
        }

        return selectedRegion;
      }
      default:
        return '장소를 선택하세요.';

    }
  }

  // void _selectedButton(
  //   BuildContext context,
  //   int type, // main : 0 / sub : 1
  //   RegionFilterState state,
  //   int index,
  //   List<RegionModel> address,
  //   RegionSelectModel select,
  // ){
  //   switch (state) {
  //     case 'major':
  //       context.read<RegionFilterBloc>().add(
  //   RegionFilterEvent.major(address, address[index].cd,address[index].addr, state));
  //     case 'middle':
  //       if (type == 0) {
  //         context.read<RegionFilterBloc>().add(
  //             RegionFilterEvent.major(address, address[index].cd,select));
  //       } else {
  //         context.read<RegionFilterBloc>().add(
  //             RegionFilterEvent.middle(address, address[index].cd,current + ' > ' + address[index].addr, state));
  //       }
  //     case 'minor':
  //       if (type == 0) {
  //         context.read<RegionFilterBloc>().add(
  //             RegionFilterEvent.middle(address, address[index].cd,current.substring(0, current.indexOf('>')) + '> ' + address[index].addr, state));
  //       } else {
  //         context.read<RegionFilterBloc>().add(
  //             RegionFilterEvent.finish(current + ' > ' + address[index].addr));
  //       }
  //   }
  // }

  void _returnResult(BuildContext context, String result) {
    CommonUtils.showToastMsg('선택된 장소의 찜목록만 보여집니다.');
    Navigator.pop(context, result);
  }

  void _nothing() {}
}
