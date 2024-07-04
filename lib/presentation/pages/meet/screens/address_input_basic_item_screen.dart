import 'package:flutter/material.dart';

/**
 * 출발지 입력 기본적으로 보여지는 Item Screen
 *
 * @Description
 * 출발지를 입력해주세요! / X 버튼 미제공
 *
 * @param indexNum - Listview index number
 */

class AddressInputBasicItemScreen extends StatelessWidget {

  final int indexNum;
  final String address;

  const AddressInputBasicItemScreen({super.key, required this.indexNum, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.amberAccent, width: 2),
      ),
      child: Container(
        child: Text(
          '$indexNum. 출발지를 입력해주세요!',
          style: TextStyle(fontSize: 20),
        ),
        margin: EdgeInsets.only(left: 15),
      ),
    );
  }
}
