import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../domain/model/display/plan/planner.model.dart';
import '../bloc/address_bloc/address_bloc.dart';

/// 계획 세우러 가기 팝업
class GoPlanPopup extends StatefulWidget {
  final int index;
  final AddressBloc addressBloc;
  const GoPlanPopup({required this.index, required this.addressBloc, super.key});

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
    return BlocListener<AddressBloc, AddressState>(
      bloc: widget.addressBloc,
      listener: (context, state) {
        state.maybeWhen(
          success: (addressInfo) {
            FocusScope.of(context).unfocus(); // 키보드 닫기
            final destination = destinationController.text ?? '';
            final arrivalTime = selectedTime.format(context);
            final pageFirstItem = PlannerItem(cur_address_info: addressInfo, place_name: destination, end_time: arrivalTime);
            final plannerFirstPage = PlannerPage(location:destination, page_item_list: [pageFirstItem]);
            final planner = Planner(
              planner_id: DateTime.now().millisecondsSinceEpoch.toString(),
              planner_title: "$destination 여행",
              planner_page_list: [plannerFirstPage],
            );
            Navigator.of(context).pop({"planner": planner});
          },
          orElse: () => CommonUtils.showToastMsg("여행지를 다시 입력해주세요."),
        );
      },
      child: AlertDialog(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("개꿀트립과 함께\n여행 계획 세우러 떠나볼까요~?", style: TextStyle(fontSize: 25)),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Scrollbar(
            thumbVisibility: true,
            child: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("먼저, 여행지와 도착예정시간을 입력해주세요.", style: TextStyle(fontSize: 18, color: AppColors.primary),),
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
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.emailBg)),
                          ),
                          value: selectedTime.minute,
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
