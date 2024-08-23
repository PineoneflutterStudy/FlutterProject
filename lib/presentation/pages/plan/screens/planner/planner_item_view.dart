import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';
import '../../../../../domain/model/display/place/transportation.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../utils/plan_util.dart';

class PlannerItemView extends StatelessWidget {
  final PlannerItem plan;
  final int index;
  final int lastIndex;
  final AddressBloc addressBloc;

  PlannerItemView(this.plan, this.index, this.lastIndex, this.addressBloc, {super.key});

  final planUtil = PlanUtil();

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
              addressBloc.add(AddressEvent.setAddress(plan.cur_address_info));
              context.pushNamed('rcmn', queryParameters: {'location': plan.place_name}, extra: addressBloc);
              },
            child: Text('Add Next Place'),
          ),
      ],
    );
  }

  Widget _buildTransportBar() {
    final Transportation transportation = planUtil.getTransportationByCode(plan.transportation ?? 'walk');
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
