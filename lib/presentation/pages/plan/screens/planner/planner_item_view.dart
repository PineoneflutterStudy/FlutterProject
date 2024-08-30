import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';
import '../../../../../domain/model/display/place/transportation.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';

class PlannerItemView extends StatelessWidget with PlanUtil{
  final PlannerItem plan;
  final int index;
  final int lastIndex;
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;
  PlannerItemView(this.plan, this.index, this.lastIndex, this.addressBloc, this.plannerBloc, {super.key});

  @override
  Widget build(BuildContext context) {
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
              flex: 2,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  TextField(decoration: InputDecoration(labelText: plan.place_name, border: UnderlineInputBorder())),
                  if (index != 0)
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
        SizedBox(height: 8),
        Container(width: 4, height: 12,
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        if (index == lastIndex)
          ElevatedButton(
            onPressed: () {
              var prevAddress = plan.cur_address_info;
              addressBloc.add(AddressEvent.setAddress(prevAddress));
              context.pushNamed('rcmn', queryParameters: {'location': plan.place_name}, extra: addressBloc).then((value) {
                var result = value as Map<String,dynamic>;
                print(' result : $result');
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
                print('plannerItem : $plannerItem');
                // plannerBloc.add(PlannerEvent.addPlannerItem(PlannerId, index, plannerItem));
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 45),
              Container(width: 4, height: 12,
                decoration: BoxDecoration(color: transportation.textColor, borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(width: 8),
              Text(plan.transportation ?? '도보', style: TextStyle(fontSize: 16, color: transportation.textColor)),
              SizedBox(width: 4),
              Icon( transportation.icon,color: transportation.textColor, size: 16),
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
