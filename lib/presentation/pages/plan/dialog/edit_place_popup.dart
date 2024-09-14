import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../domain/model/display/plan/planner.model.dart';
import '../../../../domain/model/display/plan/transportation.dart';
import '../bloc/planner_bloc/planner_bloc.dart';
import '../utils/plan_util.dart';

/// 장소 수정하기 팝업
class EditPlacePopup extends StatefulWidget {
  final int plannerIndex;
  final int pageIndex;
  final int placeIndex;
  final PlannerItem place;
  final PlannerBloc plannerBloc;

  const EditPlacePopup({super.key, required this.plannerIndex, required this.pageIndex, required this.placeIndex, required this.place, required this.plannerBloc});

  @override
  State<EditPlacePopup> createState() => _EditPlacePopupState();
}

class _EditPlacePopupState extends State<EditPlacePopup> with PlanUtil {
  late TimeOfDay selectedTime;
  late String selectedOption;
  late String walkTravelTime;
  late String carTravelTime;
  int hours = 1;
  int minutes = 0;

  @override
  void initState() {
    super.initState();

    if(widget.place.stay_time?.isNotEmpty == true){
      var stayTime = int.parse(widget.place.stay_time!);
      hours = stayTime ~/ 60;
      minutes = stayTime % 60;
    }

    selectedTime = TimeOfDay(hour: hours, minute: minutes);
    selectedOption = widget.place.transportation ?? 'walk';
    walkTravelTime = getWalkTravelTime(widget.place.distance ?? '');
    carTravelTime = getCarTravelTime(widget.place.distance ?? '');
  }

  void _onConfirm() {
    var newStayTime = convertTimeToMinutes(selectedTime).toString();
    var newTransportation = selectedOption;
    var newTravelTime = selectedOption=='walk' ? walkTravelTime : carTravelTime;
    var changeStay = (newStayTime != widget.place.stay_time);
    var changeTrans = (newTransportation != widget.place.transportation);

    if(changeStay || changeTrans){
      if(changeStay && !changeTrans){
        widget.plannerBloc.add(PlannerEvent.updateStayTime(widget.plannerIndex, widget.pageIndex, widget.placeIndex, newStayTime));
      }else{
        widget.plannerBloc.add(PlannerEvent.updateTransportation(widget.plannerIndex, widget.pageIndex, widget.placeIndex, newTransportation, newTravelTime, changeStay ,newStayTime));
      }
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
        child: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: ListBody(children: [
              Text("이용시간", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Row(
                children: [
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
              SizedBox(height: 10),
              Text("이동수단", style: TextStyle(fontSize: 20)),
              Row(children: [
                Expanded(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: Radio<String>(
                          value: Transportation.walk.code,
                          groupValue: selectedOption,
                          activeColor: Transportation.walk.textColor,
                          onChanged: (String? value) => setState(() => selectedOption = value!),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-5, 0),
                        child: buildWalkTravelTime(walkTravelTime),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: Radio<String>(
                          value: Transportation.car.code,
                          groupValue: selectedOption,
                          activeColor: Transportation.car.textColor,
                          onChanged: (String? value) => setState(() => selectedOption = value!),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-6, 0),
                        child: buildCarTravelTime(carTravelTime),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                    onPressed: () {
                      //todo 추천 목록 이동 > 장소 수정 팝업 > 장소 수정 event
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Text("추천 목록 보러 가기", style: TextStyle(color: AppColors.contentSecondary, fontSize: 20)),
                  ))
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                    onPressed: () {
                      //todo 장소 삭제 event
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Text("장소 삭제", style: TextStyle(color: AppColors.contentSecondary, fontSize: 20)),
                  ))
                ],
              )
            ]),
          ),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () =>  context.pop(),
            child: Text("취소", style: TextStyle(color: AppColors.black, fontSize: 20)),
        ),
        TextButton(
          onPressed: () => _onConfirm(),
          child: Text("수정", style: TextStyle(color: AppColors.black, fontSize: 20)),
        ),
      ],
    );
  }
}