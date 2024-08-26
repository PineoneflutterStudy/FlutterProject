import 'package:flutter/material.dart';

import '../../../../../../core/theme/constant/app_colors.dart';

class AddressInputAddItemWidget extends StatelessWidget {
  final int indexNum;
  final String address;

  final void Function()? onDeleteBtnPress; // 입력 주소 제거
  final void Function()? onRemoveBtnPress; // 입력할 수 있는 항목 제거

  const AddressInputAddItemWidget(
      {super.key,
      required this.indexNum,
      required this.address,
      required this.onDeleteBtnPress,
      required this.onRemoveBtnPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.primary, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Text(
                address.isEmpty
                    ? '$indexNum. 출발지를 입력해주세요!'
                    : '$indexNum. $address',
                style: TextStyle(fontSize: 20),
                overflow: TextOverflow.ellipsis,
              ),
              margin: EdgeInsets.only(left: 15),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: address.isEmpty ? onRemoveBtnPress : onDeleteBtnPress,
              icon: address.isEmpty
                  ? Icon(
                      Icons.remove_circle,
                      color: AppColors.black.withOpacity(0.4),
                    )
                  : Icon(
                      Icons.cancel,
                      color: AppColors.black.withOpacity(0.8),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
