import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 약속 이동 수단 선택 Dialog
 */

class SelectMeetTransportationDialog extends StatelessWidget {
  List<String> trafficList = <String>['지하철', '차'];

  get list => null;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Text(
            '선택해주세요!',
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      '약속장소로 이동할 교통수단은',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                        value: trafficList.first,
                        items: trafficList.map(
                                (value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                              );
                            },
                        ).toList(),
                        onChanged: (value) {
                          setState(() {

                          });
                        })
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
