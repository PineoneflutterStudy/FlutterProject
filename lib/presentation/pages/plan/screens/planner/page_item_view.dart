import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../domain/model/display/plan/planner.model.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import 'planner_item_view.dart';

import '../../../../../core/theme/constant/app_colors.dart';

/// 여행계획 Item View
class PageItemView extends StatefulWidget {
  final String plannerId;
  final int plannerIndex;
  final PlannerPage planner;
  final int pageIndex;
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;

  const PageItemView({required this.plannerId, required this.plannerIndex, required this.planner,required this.pageIndex,required this.addressBloc,required this.plannerBloc, super.key});

  @override
  State<PageItemView> createState() => _PageItemViewState();
}

class _PageItemViewState extends State<PageItemView> {
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5,5,5,14),
      color: AppColors.secondary,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Day ${widget.pageIndex + 1}", style: TextStyle(fontSize: 28)),
                  if(widget.pageIndex != 0)
                    IconButton(onPressed: ()=> _showDeletePagePopup(context), icon: Icon(Icons.delete_outline_rounded, color: AppColors.error), padding: EdgeInsets.zero)
                ],
              ),
              SizedBox(height: 16), // Text와 ListView 사이의 간격
              Expanded(
                child: FadingEdgeScrollView.fromScrollView(
                  gradientFractionOnEnd: 0.2,
                  gradientFractionOnStart: 0.2,
                  child: ListView.builder(
                    controller: _controller,
                    scrollDirection: Axis.vertical,
                    itemCount: widget.planner.page_item_list.length,
                    itemBuilder: (context, index) {
                      return PlannerItemView(
                          plannerId: widget.plannerId,
                          pageIndex: widget.pageIndex,
                          plannerIndex: widget.plannerIndex,
                          plan: widget.planner.page_item_list[index],
                          location: widget.planner.location,
                          curItemIndex: index,
                          lastIndex: widget.planner.page_item_list.length - 1,
                          addressBloc: widget.addressBloc,
                          plannerBloc: widget.plannerBloc);
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void _showDeletePagePopup(BuildContext context) {
    CommonDialog.confirmDialog(
      context: context,
      title: '\'Day${widget.pageIndex+1}\' 일정을\n정말 삭제하시겠습니까?',
      content: '데이터는 영구적으로 삭제됩니다.\n계속 진행을 원하시면 [네]를 눌러주세요.',
      btn1Text: '아니요',
      btn2Text: '네',
      onBtn1Pressed: (context) => context.pop(),
      onBtn2Pressed: (context) => {
        context.pop(),
        widget.plannerBloc.add(PlannerEvent.deletePage(widget.plannerId, widget.plannerIndex, widget.pageIndex))
      },
    );
  }
}