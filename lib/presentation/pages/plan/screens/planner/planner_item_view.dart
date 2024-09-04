import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';
import '../../../../../domain/model/display/place/transportation.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';

class PlannerItemView extends StatelessWidget with PlanUtil{
  final String plannerId;
  final int pageIndex;
  final PlannerItem plan;
  final int curItemindex;
  final int lastIndex;
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;
  PlannerItemView({required this.plannerId,required this.pageIndex, required this.plan,required this.curItemindex,required this.lastIndex,required this.addressBloc,required this.plannerBloc, super.key});

  @override
  Widget build(BuildContext context) {
    if(curItemindex == 0){
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
                child: Text(plan.start_time ?? '', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))),
            Text('~', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
                child: Text(plan.end_time ?? '', textAlign: TextAlign.center, style: TextStyle(fontSize: 20))),
            SizedBox(width: 8),
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  TextField(decoration: InputDecoration(labelText: plan.place_name, border: UnderlineInputBorder())),
                  if (curItemindex != 0)
                    Positioned(
                      right: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(icon: Icon(Icons.edit),
                            onPressed: () {
                              // todo 장소 수정 및 아래 데이터 모두 지우기
                            },
                          ),
                          IconButton(icon: Icon(Icons.delete),
                            onPressed: () {
                              // todo 장소 삭제 및 아래 데이터 모두 지우기
                            },
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: (curItemindex == lastIndex) ? 40 : 10 ),
        if (curItemindex == lastIndex)
          ElevatedButton(
            onPressed: () {
              // 마지막 위치로 좌표 수정
              var prevAddress = plan.cur_address_info;
              addressBloc.add(AddressEvent.setXYUpdated(prevAddress));

              context.pushNamed('rcmn', queryParameters: {'location': plan.place_name}, extra: addressBloc).then((value) {
                var result = value as Map<String,dynamic>;

                var startTime = plan.end_time;
                var plannerItem = PlannerItem(
                  prev_address_info: prevAddress, // O
                  cur_address_info: result['cur_address_info'], // X
                  place_name: result['place_name'],
                  start_time: addMinutesToTime(startTime, timeStringToMinutes(result['travel_time'])), //+ travel_time
                  end_time: addMinutesToTime(startTime, result['selectedTime']), // start_time + stay_time
                  stay_time: result['selectedTime'],
                  distance: result['distance'],
                  transportation: result['selectedTransportation'],
                  travel_time: result['travel_time'],
                );

                plannerBloc.add(PlannerEvent.addPlannerItem(plannerId, pageIndex, plannerItem));
                plannerBloc.add(GetPlannerListEvent());
              });
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
              Text(plan.transportation ?? '도보', style: TextStyle(fontSize: 16, color: transportation.textColor)),
              SizedBox(width: 4),
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
}
