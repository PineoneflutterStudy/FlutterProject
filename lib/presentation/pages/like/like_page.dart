import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';
import '../../../domain/usecase/display/display.usecase.dart';
import '../../../service_locator.dart';
import '../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';
import '../../main/common/component/widget/like_appbar.dart';
import 'widget/category/category_widget.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LikeAppbar(title: '찜목록'),
      body: BlocProvider(
        create: (context) => CtgrBloc(locator<DisplayUsecase>())
          ..add(CtgrInitialized(MenuType.like)),
        child: BlocConsumer<CtgrBloc, CtgrState>(
          builder: (context, ctgrState) {
            switch (ctgrState.status) {
              case Status.initial:
                return CircularProgressIndicator();
              case Status.loading:
                return CircularProgressIndicator();
              case Status.success:
                return CategoryWidget(categorys: ctgrState.ctgrs);
              case Status.error:
                return Center(child: Text("목록을 불러오는 데 실패하였습니다.\n다시 시도해주세요.",textAlign: TextAlign.center));
            }
          },
          listener: (context, state) {
            //TODO - 찜목록 메인 목록 개발 시, 상태 관리 영역
          },
        ),
      ),
    );
  }
}
