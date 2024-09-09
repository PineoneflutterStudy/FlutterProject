import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../domain/model/display/plan/address.model.dart';
import '../../../../domain/model/display/plan/planner.model.dart';
import '../bloc/address_bloc/address_bloc.dart';

class AddNextPlanPopup extends StatefulWidget {
  final String plannerTitle;
  final int index;
  final Address lastPlace;
  final AddressBloc addressBloc;
  const AddNextPlanPopup({required this.plannerTitle, required this.index, required this.lastPlace, required this.addressBloc, super.key});

  @override
  State<AddNextPlanPopup> createState() => _AddNextPlanPopupState();
}

class _AddNextPlanPopupState extends State<AddNextPlanPopup> {
  late TextEditingController destinationController;
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();

    // 출발 위치를 마지막 장소로 초기 설정
    destinationController = TextEditingController(text: widget.lastPlace.addressName);
    selectedTime = TimeOfDay(hour: 10, minute: 0);
  }

  Future<void> _onConfirm() async {
    final location = destinationController.text;

    if (location.isEmpty) {
      CommonUtils.showToastMsg("출발지를 입력해주세요.");
    } else if(location == widget.lastPlace.addressName) {
      widget.addressBloc.add(AddressEvent.setXYUpdated(widget.lastPlace));
    }else{
      widget.addressBloc.add(AddressInitialized(location));
    }
    return;
  }

  Future<void> _goRcmnPage() async {
    context.pushNamed('rcmn', queryParameters: {'location': widget.lastPlace.addressName, 'category': 'AD5'}, extra: widget.addressBloc).then((value) {
      var result = value as Map<String,dynamic>;
      var address = result['address_info'] as Address;
      setState(() {
        destinationController.text = address.addressName;
      });
      //todo 2일차 출발위치로 셋팅

    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressBloc, AddressState>(
      bloc: widget.addressBloc,
      listener: (context, state) {
        print('address state : $state');
        state.maybeWhen(
          success: (addressInfo) {
            FocusScope.of(context).unfocus(); // 키보드 닫기
            final destination = destinationController.text ?? '';
            final startTime = selectedTime.format(context);
            final pageFirstItem = PlannerItem(cur_address_info: addressInfo, place_name: destination, end_time: startTime);
            Navigator.of(context).pop({"pageFirstItem": pageFirstItem});
          },
          orElse: () => CommonUtils.showToastMsg("출발지를 다시 입력해주세요."),
        );
      },
      child: AlertDialog(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("\'${widget.plannerTitle}\' ${widget.index}일차\n계획을 세우러 떠나볼까요~?", style: TextStyle(fontSize: 25)),
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
                          children:[
                            TextField(
                              controller: destinationController,
                              decoration: InputDecoration(border: UnderlineInputBorder()),
                            ),
                            Positioned(
                              right: 0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(icon: Icon(Icons.search),
                                    iconSize: 17,
                                    padding: EdgeInsets.zero,
                                    onPressed: _goRcmnPage
                                  ),
                                ],
                              ),
                            ),
                          ]
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
                          decoration: InputDecoration(border: OutlineInputBorder()),
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
                          decoration: InputDecoration(border: OutlineInputBorder()),
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
      ),
    );
  }
}
