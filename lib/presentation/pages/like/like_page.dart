import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'page/like_logout_page.dart';

import '../../../core/utils/constant.dart';
import '../../../domain/usecase/display/display.usecase.dart';
import '../../../service_locator.dart';
import '../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';
import '../../main/common/component/widget/like_appbar.dart';
import 'bloc/like_bloc.dart';
import 'widget/category/category_widget.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: ((context) =>
            LikeBloc()..add(LikeEvent.checkLoginState()))),
        BlocProvider(create: ((context) =>
            CtgrBloc(locator<DisplayUsecase>())
              ..add(CtgrInitialized(MenuType.like))
        )),
      ],
      child: Scaffold(
        appBar: LikeAppbar(
          context: context,
          title: '찜목록'
        ),
        body: BlocConsumer<LikeBloc, LikeState>(
          builder: (context, state) {
            return state.when(
              initial: (isLoggedIn) => _initializePage(context, isLoggedIn),
              loading: () => loadingPage(),
              success: () => _categoryUI(),
              error: () => Text('에러'),
            );
          },
          listener: (context, state) {
            state.maybeWhen(
              loading: () {},
              orElse: () => _nothing,
            );
          },
        ),
      ),
    );


    // return Scaffold(
    //   appBar: LikeAppbar(title: '찜목록'),
    //   body: MultiBlocProvider(
    //     providers: [
    //       BlocProvider(create: ((context) =>
    //           LikeBloc()..add(LikeEvent.checkLoginState()))),
    //       BlocProvider(create: ((context) =>
    //           CtgrBloc(locator<DisplayUsecase>())
    //             ..add(CtgrInitialized(MenuType.like))
    //       )),
    //     ],
    //     child: BlocConsumer<LikeBloc, LikeState>(
    //       builder: (context, state) {
    //         return state.when(
    //           initial: (isLoggedIn) => _initializePage(context, isLoggedIn),
    //           loading: () => loadingPage(),
    //           success: () => _categoryUI(),
    //           error: () => Text('에러'),
    //         );
    //       },
    //       listener: (context, state) {
    //         state.maybeWhen(
    //           loading: () {},
    //           orElse: () => _nothing,
    //         );
    //       },
    //     ),
    //   ),
    // );
  }

  Widget _initializePage(BuildContext context, bool isLoggedIn) {
    if (isLoggedIn) {
      return _categoryUI();
    }
    else {
      return LikeLogoutPage(context: context);
    }
  }

  Widget _categoryUI() {
    return BlocProvider(
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
      )
    );
  }

  /*
   * 로딩 화면
   */
  Container loadingPage() {
    print('로딩 페이지?');
    return Container(
      decoration: BoxDecoration(
          color: Colors.white
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void _sendCheckLoginEvent() {
    ;
  }

  void _nothing() => {};
}
