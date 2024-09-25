import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../domain/model/display/plan/place.model.dart';
import '../../../../domain/model/display/plan/transportation.dart';
import '../utils/plan_util.dart';

/// 장소 추가하기 팝업
class AddPlacePopup extends StatefulWidget {
  final Place place;

  const AddPlacePopup({required this.place, super.key});

  @override
  State<AddPlacePopup> createState() => _AddPlacePopupState();
}

class _AddPlacePopupState extends State<AddPlacePopup> with PlanUtil {
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
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: "\'${truncateWithEllipsis(widget.place.placeName, 13)}\' ",
                  style: TextStyle(fontSize: 30, color: AppColors.primary, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: "${getParticle(widget.place.placeName)}\n여행계획에 추가 하시겠습니까~?",
                  style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
        child: Scrollbar(
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                      ),
                      items: List.generate(10, (index) => index + 1)
                          .map((int value) {
                        return DropdownMenuItem<int>(
                            value: value, child: Text(value.toString()));
                      }).toList(),
                      onChanged: (newValue) => setState(() => selectedTime =
                          TimeOfDay(
                              hour: newValue ?? 1, minute: selectedTime.minute)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(':'),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      value: selectedTime.minute,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                      ),
                      items: [0, 30].map((int value) {
                        return DropdownMenuItem<int>(
                            value: value,
                            child: Text(value.toString().padLeft(2, "0")));
                      }).toList(),
                      onChanged: (newValue) => setState(() => selectedTime =
                          TimeOfDay(
                              hour: selectedTime.hour, minute: newValue ?? 0)),
                    ),
                  )
                ],
              ),
              SizedBox(width: 10),
              // 이동방법 선택
              Row(children: [
                Text("도보  ", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: Radio<String>(
                            value: Transportation.walk.code,
                            groupValue: _selectedOption,
                            activeColor: Transportation.walk.textColor,
                            fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                              return Transportation.walk.textColor;
                            }),
                            onChanged: (String? value) {
                              setState(() => _selectedOption = value!);
                            },
                          ),
                        ),
                        Transform.translate(
                            offset: Offset(-5, 0),
                            child: buildWalkTravelTime(widget.place.walkTravelTime)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: Radio<String>(
                            value: Transportation.car.code,
                            groupValue: _selectedOption,
                            activeColor: Transportation.car.textColor,
                            fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                              return Transportation.car.textColor;
                            }),
                            onChanged: (String? value) =>
                                setState(() => _selectedOption = value!),
                          ),
                        ),
                        Transform.translate(
                            offset: Offset(-6, 0),
                            child:
                                buildCarTravelTime(widget.place.carTravelTime)),
                      ],
                    ),
                  ),
                ),
              ]),
            ]),
          ),
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
