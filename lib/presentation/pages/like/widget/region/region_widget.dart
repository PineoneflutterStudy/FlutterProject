import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'region_button_widget.dart';
import 'region_list_widget.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../data/repository_impl/like/like_place_repository_impl.dart';
import '../../../../../domain/model/display/like/region_list.dart';
import '../../../../../domain/model/display/like/region_select.dart';
import '../../../../../domain/usecase/like/place/like_place.usecase.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/like_place/like_place_bloc.dart';
import '../../bloc/region_filter_bloc.dart';
import '../common/like_loading_page.dart';
import 'region_select_widget.dart';

class RegionWidget extends StatelessWidget {
  final LikePlaceUsecase _likePlaceUsecase = LikePlaceUsecase(
      LikePlaceRepositoryImpl(FirebaseFirestoreUtil())
  );
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>
          RegionFilterBloc()
            ..add(RegionFilterEvent.started())
        ),
        BlocProvider(create: (context) =>
          LikePlaceBloc(_likePlaceUsecase)
        ),
      ],
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
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: AppColors.primary, width: 1.5),
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
            ),
            Expanded(
              flex: 1,
              child: RegionButtonWidget(
                selectModel: select,
              ),
            ),
          ],
        ),
      )
    );
  }

  void _nothing() {}
}
