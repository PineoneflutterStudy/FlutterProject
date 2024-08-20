import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../domain/model/display/place/planner.model.dart';
import '../bloc/address_bloc/address_bloc.dart';

class GoPlanPopup extends StatefulWidget {
  final AddressBloc addressBloc;
  const GoPlanPopup({required this.addressBloc, super.key});

  @override
  State<GoPlanPopup> createState() => _GoPlanPopupState();
}

class _GoPlanPopupState extends State<GoPlanPopup> {
  late TextEditingController destinationController;
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();
    destinationController = TextEditingController();
    selectedTime = TimeOfDay(hour: 10, minute: 0);
  }

  Future<void> _onConfirm() async {
    final location = destinationController.text;

    if (location.isEmpty) {
      CommonUtils.showToastMsg("여행지를 입력해주세요.");
    } else {
      widget.addressBloc.add(AddressInitialized(location));
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
    return BlocListener<AddressBloc, AddressState>(
      bloc: widget.addressBloc,
      listener: (context, state) {
        state.maybeWhen(
          success: (addressInfo) {
            FocusScope.of(context).unfocus(); // 키보드 닫기
            final destination = destinationController.text ?? '';
            final arrivalTime = selectedTime.format(context);
            final planner = Planner(
              planner_id: uuid.v1(),
              planner_title: "$destination 여행",
              destination: addressInfo,
              arrivalTime: arrivalTime,
              planner_item_list: [],
            );
            print('planner.toJson() : ${planner.toJson()}');
            Navigator.of(context).pop({"planner": planner});
          },
          orElse: () => CommonUtils.showToastMsg("여행지를 다시 입력해주세요."),
        );
      },
      child: AlertDialog(
        title: Text("개꿀트립과 함께\n여행 계획 세우러 떠나볼까요~?", style: TextStyle(fontSize: 25)),
        content: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("먼저, 여행지와 도착예정시간을 입력해주세요.", style: TextStyle(fontSize: 17, color: AppColors.primary),),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("여행지   :  ", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: destinationController,
                        decoration: InputDecoration(border: UnderlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("도착시간", style: TextStyle(fontSize: 20)),
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
        actions: [
          TextButton(
            onPressed: () {
              FocusScope.of(context).unfocus(); // 키보드 닫기
              Navigator.of(context).pop();
            },
            child: Text("No"),
          ),
          TextButton(
            onPressed: () => _onConfirm(),
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }
}
