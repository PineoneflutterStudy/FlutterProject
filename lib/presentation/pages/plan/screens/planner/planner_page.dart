import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'planner_loading_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';
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
  final PageController _pageController = PageController(viewportFraction: 0.93);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlannerBloc, PlannerState>(
      bloc: widget.plannerBloc,
      builder: (context, state) {
        print("current state : $state");
        return state.when(
          loading: () => PlannerLoadingWidget(),
          success: (plannerList, selected) {
            final categoryWidgets = getCategoryViewList(context, plannerList, selected);

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
                    height: 20,
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: selected.planner_page_list.length,
                      axisDirection: Axis.horizontal,
                      effect: JumpingDotEffect(
                          dotColor: Colors.grey,
                          activeDotColor: AppColors.primary,
                          dotHeight: 10,
                          dotWidth: 10),
                    ),
                  ),
                  //page view 영역
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: selected.planner_page_list.length,
                          itemBuilder: (context, index) {
                            return PageItemView(plannerId: selected.planner_id, planner: selected.planner_page_list[index], pageIndex:  index, addressBloc:  widget.addressBloc, plannerBloc: widget.plannerBloc);
                          },
                          pageSnapping: true),
                    ),
                  ),
                ],
              ),
              floatingActionButton: _buildFab(context, selected),
              floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            );
          },
          init: (isLogined) {
            // todo 수정
            // 여기를 안타긴하지만 혹시모르는 비정상적인 루트 예외처리 필요
            return Container();
          },
          error: (error) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('플래너를 불러오는 데 실패했습니다.'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => widget.plannerBloc.add(const PlannerEvent.getPlannerList()),
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
  List<Widget> getCategoryViewList(BuildContext context, List<Planner> plannerList, Planner selected) {
    final List<Widget> categoryWidgets = plannerList.map((planner) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: ChoiceChip(
          label: Text(planner.planner_title, style: TextStyle(fontSize: 20)),
          selected: planner == selected,
          onSelected: (isSelected) {
            if (isSelected) {
              widget.plannerBloc.add(PlannerEvent.selected(planner));
            }
          },
        ),
      );
    }).toList();

    categoryWidgets.add(
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: IconButton(
          icon: Icon(Icons.add_circle_sharp, color: AppColors.primary, size: 20),
          onPressed: () async {
            final result = await showGoPlanPopup(context: context, addressBloc: widget.addressBloc);
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
          // TODO: 다음날 계획 추가하기 팝업
        } else { // delete btn
          widget.plannerBloc.add(PlannerEvent.deletePlanner(selected.planner_id));
        }
      },
    );
  }
}
