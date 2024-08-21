import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';
import 'page_item_view.dart';

import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/address_bloc/address_bloc.dart';

/// ### Plan 메뉴 로그인 & plannerList 있는 경우 화면
/// ##### 여행플랜 짜기 화면
class PlannerPage extends StatelessWidget {
  final PlannerBloc plannerBloc;
  final AddressBloc addressBloc;

  PlannerPage({required this.plannerBloc, required this.addressBloc, super.key,});

  final PageController _pageController = PageController(viewportFraction: 0.93);
  final planUtil = PlanUtil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: BlocBuilder<PlannerBloc, PlannerState>(
        bloc: plannerBloc,
        builder: (context, state) {
          print("current state : $state");
          return state.when(
            loading: () => Center(child: CircularProgressIndicator()),
            success: (plannerList, selected) {
              final categoryWidgets = getCategoryViewList(context, plannerList, selected);

              return Column(
                children: [
                  // planner 카테고리 영역
                  Padding(
                    padding: const EdgeInsets.only(left : 25),
                    child: SizedBox(
                      height: 40, // 카테고리와 버튼의 높이 설정
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: categoryWidgets,
                      ),
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
                        dotWidth: 10,
                      ),
                    ),
                  ),
                  //pageview 영역
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: selected.planner_page_list.length,
                        itemBuilder: (context, index) {
                          return PageItemView(selected.planner_page_list[index], index+1 );
                        },
                        pageSnapping: true
                      ),
                    ),
                  ),
                ],
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
                      onPressed: () {
                        // todo
                        // 에러를 다시 시도하거나 다른 액션을 취할 수 있도록
                        plannerBloc.add(const PlannerEvent.getPlannerList());
                      },
                      child: Text('다시 시도'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, right: 28.0),
        child: FloatingActionButton(
          onPressed: () {
            // TODO: firebase delete
          },
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primary,
          child: Icon(Icons.delete),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  List<Widget> getCategoryViewList(BuildContext context, List<Planner> plannerList, Planner selected) {
    final List<Widget> categoryWidgets = plannerList.map((planner) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: ChoiceChip(
          label: Text(planner.planner_title, style: TextStyle(fontSize: 20),),
          selected: planner == selected,
          onSelected: (isSelected) {
            if (isSelected) {
              plannerBloc.add(PlannerEvent.selected(planner));
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
            final result = await planUtil.showGoPlanPopup(context: context, addressBloc: addressBloc);
            if (result != null && result.containsKey('planner')) {
              Planner planner = result['planner']!;
              plannerBloc.add(PlannerEvent.addPlanner(planner));
            }
          },
        ),
      ),
    );

    return categoryWidgets;
  }
}
