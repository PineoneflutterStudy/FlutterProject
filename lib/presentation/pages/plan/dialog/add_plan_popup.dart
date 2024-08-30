import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../domain/model/display/place/place.model.dart';
import '../../../../domain/model/display/place/transportation.dart';
import '../utils/plan_util.dart';

class AddPlanPopup extends StatefulWidget {
  final Place place;

  const AddPlanPopup({required this.place, super.key});

  @override
  State<AddPlanPopup> createState() => _AddPlanPopupState();
}

class _AddPlanPopupState extends State<AddPlanPopup> with PlanUtil{
  late TimeOfDay selectedTime;
  String _selectedOption = 'walk';

  @override
  void initState() {
    super.initState();
    selectedTime = TimeOfDay(hour: 1, minute: 0);
  }

  void _onConfirm() {
    final selectedData = {
      'time': convertTimeToMinutes(selectedTime),
      'transportation': _selectedOption,
    };
    Navigator.of(context).pop(selectedData);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: "\'${widget.place.placeName}\' ",
                style: TextStyle(fontSize: 30, color: AppColors.primary, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "${getParticle(widget.place.placeName)}\n여행계획에 추가 하시겠습니까~?",
                style: TextStyle(fontSize: 25, color: Colors.black)),
          ],
        ),
      ),
      content: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: ListBody(children: [
            //이용시간 설정
            Row(
              children: [
                Text("이용시간", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField<int>(
                    value: selectedTime.hour,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    items: List.generate(10, (index) => index + 1).map((int value) {
                          return DropdownMenuItem<int>(value: value, child: Text(value.toString()));
                        }).toList(),
                    onChanged: (newValue) => setState(() => selectedTime = TimeOfDay(hour: newValue ?? 1, minute: selectedTime.minute)),
                  ),
                ),
                SizedBox(width: 10),
                Text(':'),
                SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField<int>(
                    value: selectedTime.minute,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    items: [0, 30].map((int value) {
                      return DropdownMenuItem<int>(value: value, child: Text(value.toString().padLeft(2, "0")));
                    }).toList(),
                    onChanged: (newValue) => setState(() => selectedTime = TimeOfDay(hour: selectedTime.hour, minute: newValue ?? 0)),
                  ),
                )
              ],
            ),
            SizedBox(width: 10),
            // 이동방법 선택
            Row(children: [
              Text("도보", style: TextStyle(fontSize: 20)),
              SizedBox(width: 10),
              Expanded(
                child: ListTile(
                  title: buildWalkTravelTime(widget.place.walkTravelTime),
                  leading: Radio<String>(
                    value: Transportation.walk.code,
                    groupValue: _selectedOption,
                    activeColor: Transportation.walk.textColor,
                    onChanged: (String? value) {
                      setState(() => _selectedOption = value!);
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: buildCarTravelTime(widget.place.carTravelTime),
                  leading: Radio<String>(
                    value: Transportation.car.code,
                    groupValue: _selectedOption,
                    activeColor: Transportation.car.textColor,
                    onChanged: (String? value) => setState(() => _selectedOption = value!),
                  ),
                ),
              ),
            ]),
          ]),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("No", style: TextStyle(color: AppColors.primary, fontSize: 20)),
        ),
        TextButton(
          onPressed: () => _onConfirm(),
          child: Text("Yes", style: TextStyle(color: AppColors.primary, fontSize: 20)),
        ),
      ],
    );
  }
}
