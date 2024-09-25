import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/constant.dart';
import '../../../domain/model/display/common/category.model.dart';
import '../../../domain/model/display/common/fab_item.dart';
import '../../main/common/component/dialog/common_dialog.dart';
import '../../main/common/component/widget/common_fab_widget.dart';
import 'bloc/like_category/like_category_bloc.dart';
import 'page/like_place_empty_page.dart';
import 'widget/like_place/like_place_widget.dart';
import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../data/repository_impl/like/like_place_repository_impl.dart';
import '../../../domain/usecase/like/place/like_place.usecase.dart';
import 'bloc/like_place/like_place_bloc.dart';
import 'bloc/login/login_check_bloc.dart';
import 'page/like_logout_page.dart';

import '../../../domain/usecase/display/display.usecase.dart';
import '../../../service_locator.dart';
import 'widget/appbar/like_appbar.dart';
import 'widget/category/category_widget.dart';
import 'widget/common/like_empty_page.dart';
import 'widget/common/like_loading_page.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {

  final LikePlaceUsecase _likePlaceUsecase = LikePlaceUsecase(
      LikePlaceRepositoryImpl(FirebaseFirestoreUtil())
  );
  
  late LoginCheckBloc _loginCheckBloc;
  late LikeCategoryBloc _likeCategoryBloc;
  late LikePlaceBloc _likePlaceBloc;
  
  @override
  void initState() {
    super.initState();
    _loginCheckBloc = LoginCheckBloc();
    _loginCheckBloc.add(LoginCheckEvent.checkLogin());
    
    _likeCategoryBloc = LikeCategoryBloc(locator<DisplayUsecase>());

    _likePlaceBloc = LikePlaceBloc(_likePlaceUsecase);
  }
  
  @override
  void dispose() {
    _loginCheckBloc.close();
    _likeCategoryBloc.close();
    _likePlaceBloc.close();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _loginCheckBloc),
        BlocProvider.value(value: _likeCategoryBloc),
        BlocProvider.value(value: _likePlaceBloc),
      ],
      child: BlocConsumer<LoginCheckBloc, LoginCheckState>(
        bloc: _loginCheckBloc,
        builder: (context, state) {
          return Scaffold(
              appBar: LikeAppbar(
                title: '나만의 장소',
                loginBloc: _loginCheckBloc,
                loginState: state,
              ),
              body: state.maybeWhen(
                loading: () => LikeLoadingPage(),
                loggedIn: () => _setLikePage(),
                loggedOut: () => LikeLogoutPage(loginBloc: _loginCheckBloc),
                orElse: () => LikeEmptyPage(),
              ),
            );
        },
        listener: (context, state) {
          state.maybeWhen(
            loggedIn: () => _likeCategoryBloc.add(LikeCategoryEvent.getCategoryList(MenuType.like)),
            error: () => _nothing,
            orElse: () => _nothing,
          );
        },
      ),
    );
  }

  Widget _setLikePage() {
    return Stack(
      children: [
        Column(
          children: [
            _categoryUI(),
            Expanded(
              child: _placeUI(),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: _buildFab(),
        ),
      ],
    );
  }

  Widget _categoryUI() {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState> (
      builder: (context, state) {
        return state.when(
            loading: () => LikeLoadingPage(),
            success: (categorys, category, regionName) {
              (regionName.isNotEmpty)
                  ? _likePlaceBloc.add(LikePlaceEvent.region(category, regionName))
                  : _likePlaceBloc.add(LikePlaceEvent.update(category));
              return CategoryWidget(categorys: categorys, selected: category, regionName: regionName);
            },
            error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _placeUI() {
    return BlocBuilder<LikePlaceBloc, LikePlaceState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => LikeLoadingPage(),
          success: (state, placeList, category) => LikePlaceWidget(state: state, placeList: placeList),
          empty: (state, category) => LikePlaceEmptyPage(state: state, ctgrId: category.ctgrId),
          error: () => _errorWidget(),
          orElse: () => LikeEmptyPage(),
        );
      },
    );
  }

  Widget _buildFab() {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (categorys, selected, regionName) =>
              CommonFabWidget(
                fabItems: [
                  FabItem(icon: Icons.format_list_bulleted_rounded, label: '목록 삭제', onTap: () => {
                    _showDeletePopup(_likePlaceBloc, selected, regionName),
                  }),
                  FabItem(icon: Icons.delete, label: '전체 삭제', onTap: () => {
                    _showDeletePopup(_likePlaceBloc, null, regionName),
                  }),
                ],
                mainIcon: Icons.edit_note_rounded,
                padding: 20.0,
              ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  // 삭제 팝업
  void _showDeletePopup(LikePlaceBloc placeBloc, Category? category, String regionName){
    CommonDialog.confirmDialog(
      context: context,
      title: (category == null || category.ctgrName == '전체') ? '모든 나만의 장소를\n정말 삭제하시겠습니까?' : '나만의 \'${category.ctgrName}\' 장소를\n정말 삭제하시겠습니까?',
      content: '데이터는 영구적으로 삭제됩니다.\n계속 진행을 원하시면 [네]를 눌러주세요.',
      btn1Text: '아니요',
      btn2Text: '네',
      onBtn1Pressed: (context) => context.pop(),
      onBtn2Pressed: (context) => {
        context.pop(),
        placeBloc.add(LikePlaceEvent.deleteAll(category, regionName)),
      },
    );
  }

  Widget _errorWidget() {
    return Center(
      child: Column(
        children: [
          Text("장소 목록을 불러오는 데 실패하였습니다.\n다시 시도해주세요.",
              textAlign: TextAlign.center
          ),
        ],
      )
    );
  }

  void _nothing() => {};
}
