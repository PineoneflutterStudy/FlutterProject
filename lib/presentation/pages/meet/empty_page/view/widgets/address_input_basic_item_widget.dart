import 'package:flutter/material.dart';

/**
 * 출발지 입력 기본적으로 보여지는 Item Screen
 *
 * @Description
 * 출발지를 입력해주세요! / X 버튼 미제공
 *
 * @param indexNum - Listview index number
 */

class AddressInputBasicItemWidget extends StatelessWidget {
  final int indexNum;
  final String address;

  final void Function()? onDeleteBtnPress; // 입력 주소 제거

  const AddressInputBasicItemWidget(
      {super.key,
      required this.indexNum,
      required this.address,
      required this.onDeleteBtnPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.amberAccent, width: 2),
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
          Visibility(
            visible: address.isEmpty ? false : true,
            child: Container(
              child: IconButton(
                onPressed: onDeleteBtnPress,
                icon: Icon(
                  Icons.cancel,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
