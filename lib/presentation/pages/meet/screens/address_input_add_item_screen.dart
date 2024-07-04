import 'package:flutter/material.dart';

class AddressInputAddItemScreen extends StatelessWidget {

  final int indexNum;
  final String address;

  const AddressInputAddItemScreen({super.key, required this.indexNum, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.amberAccent, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              '${indexNum}. 출발지를 입력해주세요!',
              style: TextStyle(fontSize: 20),
            ),
            margin: EdgeInsets.only(left: 15),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                // 취소 버튼 입력 시...
                print('출발지 입력정보를 지웁니다....');
              },
              icon: Icon(Icons.cancel),
            ),
          )
        ],
      ),
    );
  }
}
