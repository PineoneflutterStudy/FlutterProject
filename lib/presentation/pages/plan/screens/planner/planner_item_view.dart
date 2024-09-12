import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/plan/planner.model.dart';
import '../../../../../domain/model/display/plan/transportation.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';

class PlannerItemView extends StatelessWidget with PlanUtil{
  final int pageIndex;
  final int plannerIndex;
  final String location;
  final PlannerItem plan;
  final int curItemIndex;
  final int lastIndex;
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;
  PlannerItemView({required this.plannerIndex,required this.pageIndex, required this.location, required this.plan, required this.curItemIndex,required this.lastIndex,required this.addressBloc,required this.plannerBloc, super.key});

  @override
  Widget build(BuildContext context) {
    if(curItemIndex == 0) {
      addressBloc.add(AddressEvent.setAddress(plan.cur_address_info));
    }
    //todo 다음날 넘어갈 경우 구분선 추가하기
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildTransportBar(),
        Row(
          children: [
            Expanded(
                child: Text(plan.start_time ?? '', textAlign: TextAlign.center, style: TextStyle(fontSize: 18))),
            Text('~', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
                child: Text(plan.end_time ?? '', textAlign: TextAlign.center, style: TextStyle(fontSize: 18))),
            SizedBox(width: 8),
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 1,
                        color: AppColors.emailBg,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                          child: Text(plan.place_name, style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 20)),
                        ),
                      ),
                      if (curItemIndex != 0)
                        IconButton(icon: Icon(Icons.edit, color: AppColors.contentSecondary), iconSize: 20, padding: EdgeInsets.zero, onPressed: _showEditPlacePopup),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: (curItemIndex == lastIndex) ? 30 : 10 ),
        if (curItemIndex == lastIndex)
          ElevatedButton(
            onPressed: (){
              _handleAddNextPlace(context, addressBloc, plannerBloc, plannerIndex, pageIndex);
            },
            child: Text('Add Next Place'),
          ),
      ],
    );
  }

  Widget _buildTransportBar() {
    final Transportation transportation = getTransportationByCode(plan.transportation ?? 'walk');
    if (plan.travel_time != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              SizedBox(width: 10),
              Container(width: 4, height: 12,
                decoration: BoxDecoration(color: transportation.textColor, borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(width: 8),
              // Text(transportation.name, style: TextStyle(fontSize: 16, color: transportation.textColor)),
              // SizedBox(width: 4),
              Icon( transportation.icon,color: transportation.textColor, size: 16),
              Expanded(child: Container()),
              Expanded(flex : 3, child: Container()),
            ],
          ),
          SizedBox(height: 10),
        ],
      );
    } else {
      return SizedBox.shrink();
    }
  }

  // 추천 목록 페이지로 이동
  void _handleAddNextPlace(BuildContext context, AddressBloc addressBloc, PlannerBloc plannerBloc, int plannerIndex, int pageIndex) {
    // 마지막 위치로 좌표 수정
    var prevAddress = plan.cur_address_info;
    addressBloc.add(AddressEvent.setXYUpdated(prevAddress));

    // 다음 화면으로 이동 및 결과 처리
    context.pushNamed('rcmn', queryParameters: {'location': location, 'placeId' : plan.cur_place_id ?? ''}, extra: addressBloc).then((value) {
      var nextPlace = value as Map<String, dynamic>;

      var startTime = plan.end_time;
      var plannerItem = PlannerItem(
        prev_address_info: prevAddress,
        prev_place_id: plan.cur_place_id,
        cur_address_info: nextPlace['cur_address_info'],
        place_name: nextPlace['place_name'],
        start_time: addMinutesToTime(startTime, timeStringToMinutes(nextPlace['travel_time'])),
        end_time: addMinutesToTime(startTime, nextPlace['selectedTime']),
        stay_time: nextPlace['selectedTime'],
        distance: nextPlace['distance'],
        cur_place_id: nextPlace['place_id'],
        transportation: nextPlace['selectedTransportation'],
        travel_time: nextPlace['travel_time'],
      );

      // PlannerBloc에 이벤트 추가
      plannerBloc.add(PlannerEvent.addPlannerItem(plannerIndex, pageIndex, plannerItem));
    });
  }

  void _showEditPlacePopup(){
    // todo 해당 장소 수정 (고민중)
    // todo 다음 장소와 이동 수단 및 이동시간 수정 (고민중)
    // todo 장소 삭제 기능
  }
}
