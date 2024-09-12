import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../domain/model/display/plan/address.model.dart';
import '../../../../domain/model/display/plan/planner.model.dart';
import '../bloc/address_bloc/address_bloc.dart';
import '../utils/plan_util.dart';

/// 다음날 계획 시작하기 팝업
class AddNextPlanPopup extends StatefulWidget {
  final String location;
  final int index;
  final Address lastPlace;
  final AddressBloc addressBloc;
  final String lastPlaceId;
  const AddNextPlanPopup({required this.location, required this.index, required this.lastPlace, required this.lastPlaceId, required this.addressBloc, super.key});

  @override
  State<AddNextPlanPopup> createState() => _AddNextPlanPopupState();
}

class _AddNextPlanPopupState extends State<AddNextPlanPopup> with PlanUtil {
  late TimeOfDay selectedTime;
  late String searchText;
  late Address startPlace;
  late String placeId;

  @override
  void initState() {
    super.initState();

    // 출발 위치를 마지막 장소로 초기 설정
    searchText = widget.lastPlace.addressName;
    startPlace = widget.lastPlace;
    selectedTime = TimeOfDay(hour: 10, minute: 0);
  }

  Future<void> _onConfirm() async {
    if (searchText.isEmpty) {
      CommonUtils.showToastMsg("출발지를 입력해주세요.");
    }else{
      var place = PlannerItem(
          cur_address_info: startPlace,
          cur_place_id: placeId,
          place_name: startPlace.addressName,
          end_time: selectedTime.format(context));
      Navigator.of(context).pop({'startPlace' : place});
    }
    return;
  }

  Future<void> _goRcmnPage() async {
    context.pushNamed('rcmn', queryParameters: {'location': widget.location, 'category': 'AD5'}, extra: widget.addressBloc).then((value) {
      var result = value as Map<String,dynamic>;
      var address = result['address_info'] as Address?;
      placeId = result['place_id'].toString();
      startPlace = address ?? widget.lastPlace;
      setState(() {
        searchText = address?.addressName ?? widget.lastPlace.addressName;
      });
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("\'${widget.location} 여행\' ${widget.index}일차\n계획을 세우러 떠나볼까요~?", style: TextStyle(fontSize: 25)),
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("먼저, 출발위치와 출발시각을 입력해주세요.\nex) 1일차 숙소", style: TextStyle(fontSize: 17, color: AppColors.primary),),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("출발위치   :  ", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 1,
                                color: AppColors.contentFourth,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(searchText, style: TextStyle(overflow: TextOverflow.ellipsis)),
                              ),
                              IconButton(icon: Icon(Icons.search), iconSize: 17, padding: EdgeInsets.zero, onPressed: _goRcmnPage),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("출발시각", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 10),
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        value: selectedTime.hour,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                        ),
                        items: List.generate(25, (index) => index).map((int value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text(value.toString().padLeft(2, "0")),
                          );
                        }).toList(),
                        onChanged: (newValue) => setState(() => selectedTime = TimeOfDay(hour: newValue ?? 10, minute: selectedTime.minute)),
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
                        onChanged: (newValue) {
                          setState(() => selectedTime = TimeOfDay(hour: selectedTime.hour, minute: newValue ?? 0));
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            FocusScope.of(context).unfocus(); // 키보드 닫기
            Navigator.of(context).pop();
          },
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
