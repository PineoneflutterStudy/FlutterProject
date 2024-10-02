import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../domain/model/display/plan/planner.model.dart';
import '../../../../domain/model/display/plan/transportation.dart';
import '../../../main/common/component/dialog/common_dialog.dart';
import '../bloc/address_bloc/address_bloc.dart';
import '../bloc/planner_bloc/planner_bloc.dart';
import '../utils/plan_util.dart';

/// 장소 수정하기 팝업
class EditPlacePopup extends StatefulWidget {
  final String plannerId;
  final int plannerIndex;
  final int pageIndex;
  final int placeIndex;
  final PlannerItem place;
  final String location;
  final PlannerBloc plannerBloc;
  final AddressBloc addressBloc;

  const EditPlacePopup({super.key, required this.plannerId, required this.plannerIndex, required this.pageIndex, required this.placeIndex, required this.place, required this.location, required this.plannerBloc, required this.addressBloc});

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
        widget.plannerBloc.add(PlannerEvent.updateStayTime(widget.plannerId, widget.plannerIndex, widget.pageIndex, widget.placeIndex, newStayTime));
      }else{
        widget.plannerBloc.add(PlannerEvent.updateTransportation(widget.plannerId, widget.plannerIndex, widget.pageIndex, widget.placeIndex, newTransportation, newTravelTime, changeStay ,newStayTime));
      }
    }
    Navigator.of(context).pop();
  }

  void _deletePlace() {
    CommonDialog.confirmDialog(
      context: context,
      title: '\'${widget.place.place_name}\'${getParticle(widget.place.place_name)}\n정말 삭제하시겠습니까?',
      btn1Text: '아니요',
      btn2Text: '네',
      onBtn1Pressed: (context) => context.pop(),
      onBtn2Pressed: (context) => {
        context.pop(),
        widget.plannerBloc.add(PlannerEvent.deletePlace(widget.plannerId, widget.plannerIndex, widget.pageIndex, widget.placeIndex)),
        context.pop(),
      },
    );
  }

  Future<void> _goRcmnPage() async {
    var prevAddress = widget.place.prev_address_info ?? widget.place.cur_address_info;
    widget.addressBloc.add(AddressEvent.setXYUpdated(prevAddress));

    context.pushNamed('rcmn', queryParameters: {'location': widget.location, 'placeId' : widget.place.cur_place_id ?? '', 'root' : 'changePlace'}, extra: widget.addressBloc).then((value) {
      var changePlace = value as Map<String, dynamic>;

      print('changePlace : $changePlace');

      var plannerItem = PlannerItem(
        cur_address_info: changePlace['cur_address_info'],
        cur_place_id: changePlace['place_id'],
        place_name: changePlace['place_name'],
        distance: changePlace['distance'],
        transportation: changePlace['selectedTransportation'],
        stay_time: changePlace['selectedTime'],
        travel_time: changePlace['travel_time'],
        end_time: '',
      );

      widget.plannerBloc.add(PlannerEvent.updatePlace(widget.plannerId, widget.plannerIndex, widget.pageIndex, widget.placeIndex, plannerItem));
      context.pop();
    });

    return;
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
                          TimeOfDay(hour: newValue ?? 1, minute: selectedTime.minute)),
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
                          fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                            return Transportation.walk.textColor;
                          }),
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
                          fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                            return Transportation.car.textColor;
                          }),
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
                      _goRcmnPage();
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
                    onPressed: _deletePlace,
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
            child: Text("취소", style: TextStyle(color: AppColors.carrot, fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        TextButton(
          onPressed: () => _onConfirm(),
          child: Text("수정", style: TextStyle(color: AppColors.carrot, fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}