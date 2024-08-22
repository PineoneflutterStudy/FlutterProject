import 'package:flutter/material.dart';

import '../../../../../domain/model/display/place/planner.model.dart';

class PlannerItemView extends StatelessWidget {
  final PlannerItem plan;

  const PlannerItemView(this.plan, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (plan.travel_time != null)
          Container(width: 2, height: 10, color: Colors.grey, margin: const EdgeInsets.symmetric(vertical: 10.0)),
          SizedBox(height: 10),
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
        // todo 이동 수단 및 이동 시간 표기
        Container(width: 2, height: 10, color: Colors.grey, margin: const EdgeInsets.symmetric(vertical: 10.0)),
        ElevatedButton(
          onPressed: () {
            // todo 추천 목록으로 이동
          },
          child: Text('Add Next Place'),
        ),
      ],
    );
  }
}
