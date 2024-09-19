import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../domain/model/display/plan/planner.model.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import '../../../../main/common/component/widget/honey_progress_indicator.dart';
import '../../dialog/add_next_plan_popup.dart';
import 'empty_planner_page.dart';
import '../plan_login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/theme/constant/app_colors.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';
import 'planner_fab_widget.dart';
import 'page_item_view.dart';

import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/address_bloc/address_bloc.dart';

/// ### Plan 메뉴 로그인 & plannerList 있는 경우 화면
/// ##### 여행플랜 짜기 화면
class PlannerPage extends StatefulWidget {
  final PlannerBloc plannerBloc;
  final AddressBloc addressBloc;

  PlannerPage({required this.plannerBloc, required this.addressBloc, super.key});

  @override
  State<PlannerPage> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> with PlanUtil{
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.93);
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlannerBloc, PlannerState>(
      bloc: widget.plannerBloc,
      builder: (context, state) {
        print("current state : $state");
        return state.when(
          loading: () => HoneyProgressIndicator(),
          init: () => PlanLoginPage(plannerBloc: widget.plannerBloc),
          empty: () => EmptyPlannerPage(addressBloc: widget.addressBloc, plannerBloc: widget.plannerBloc),
          success: (plannerList, selectedIndex, pageIndex) {
            print('pageIndex : $pageIndex');
            final categoryWidgets = getCategoryViewList(context, plannerList, selectedIndex);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _pageController.jumpToPage(pageIndex);
            });
            return Scaffold(
              appBar: MainAppbar(title: '나만의 여행플래너'),
              body: Column(
                children: [
                  // planner 카테고리 영역
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: SizedBox(
                      height: 40,
                      child: ListView(scrollDirection: Axis.horizontal, children: categoryWidgets),
                    ),
                  ),
                  // indicator 영역
                  SizedBox(
                    height: 25,
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: plannerList[selectedIndex].planner_page_list.length,
                      axisDirection: Axis.horizontal,
                      effect: JumpingDotEffect(
                          dotColor: Colors.grey,
                          activeDotColor: AppColors.error,
                          dotHeight: 7,
                          dotWidth: 7),
                    ),
                  ),
                  //page view 영역
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: plannerList[selectedIndex].planner_page_list.length,
                          itemBuilder: (context, index) {
                            return PageItemView(plannerIndex: plannerList[selectedIndex].planner_index, planner: plannerList[selectedIndex].planner_page_list[index], pageIndex:  index, addressBloc:  widget.addressBloc, plannerBloc: widget.plannerBloc);
                          },
                          pageSnapping: true),
                    ),
                  ),
                ],
              ),
              floatingActionButton: _buildFab(context, plannerList[selectedIndex]),
              floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            );
          },
          error: (error) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('플래너를 불러오는 데 실패했습니다.'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => widget.plannerBloc.add(const PlannerEvent.getPlannerList(0,0)),
                    child: Text('다시 시도'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // 상단 플래너 카테고리 뷰
  List<Widget> getCategoryViewList(BuildContext context, List<Planner> plannerList, int selectedIndex) {
    final List<Widget> categoryWidgets = plannerList.asMap().entries.map((entry) {
      int index = entry.key;
      Planner planner = entry.value;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: ChoiceChip(
          elevation: 1,
          showCheckmark: false,
          avatar: Icon( Icons.calendar_month, color: (index == selectedIndex) ? AppColors.error : AppColors.contentFourth) ,
          labelPadding: EdgeInsets.only(left: 3),
          label: Text(planner.planner_title , style: TextStyle(fontSize: 16, color: (index == selectedIndex) ? AppColors.black : AppColors.contentFourth)),
          selected: index == selectedIndex,
          backgroundColor: Colors.white,
          checkmarkColor: AppColors.primary,
          onSelected: (isSelected) {
            if (isSelected) {
              widget.plannerBloc.add(PlannerEvent.selected(index));  // 인덱스를 사용하여 선택 이벤트 처리
            }
          },
        ),
      );
    }).toList();

    categoryWidgets.add(
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: IconButton(
          icon: Icon(Icons.add_circle_sharp, color: AppColors.error.withOpacity(0.8), size: 20),
          onPressed: () async {
            final result = await showGoPlanPopup(context: context, addressBloc: widget.addressBloc, index : plannerList.length);
            if (result != null && result.containsKey('planner')) {
              Planner planner = result['planner']!;
              widget.plannerBloc.add(PlannerEvent.addPlanner(planner));
            }
          },
        ),
      ),
    );

    return categoryWidgets;
  }

  Widget _buildFab(BuildContext context, Planner selected) {
    final icons = [Icons.add, Icons.delete];
    return PlannerFabWidget(
      icons: icons,
      onIconTapped: (index) {
        if (index == 0) { // add btn
          _showAddNextPlanPopup(context, selected, selected.planner_page_list.length);
        } else { // delete btn
          _showDeletePlanPopup(context, selected);
        }
      },
    );
  }

  void _showAddNextPlanPopup(BuildContext context, Planner selected, int index) {
    var currentPage = selected.planner_page_list[index-1];
    var lastPlace = currentPage.page_item_list.last;
    showDialog(
      context: context,
      builder: (BuildContext context) => AddNextPlanPopup(location: currentPage.location, lastPlace: lastPlace.cur_address_info , lastPlaceId : lastPlace.cur_place_id ?? '' ,index: index+1 , addressBloc: widget.addressBloc),
    ).then((result) {
      if (result != null) {
        print(result);
        widget.plannerBloc.add(PlannerEvent.addNextPage(selected.planner_index, currentPage.location, result['startPlace']));
      }
    });
  }

  void _showDeletePlanPopup(BuildContext context, Planner selected){
    CommonDialog.confirmDialog(
      context: context,
      title: '\'${selected.planner_title}\' 계획을\n정말 삭제하시겠습니까?',
      content: '데이터는 영구적으로 삭제됩니다.\n계속 진행을 원하시면 [네]를 눌러주세요.',
      btn1Text: '아니요',
      btn2Text: '네',
      onBtn1Pressed: (context) => context.pop(),
      onBtn2Pressed: (context) => {
        context.pop(),
        widget.plannerBloc.add(PlannerEvent.deletePlanner(selected.planner_index))
      },
    );
  }
}
