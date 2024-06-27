import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/meet_place_set_screen.dart';

/**
 * 약속 이동 수단 선택 Dialog
 */
const List<String> trafficList = <String>['지하철', '차'];
const double buttonWidth = 120;
const double buttonHeight = 50;
const double dialogBgRadius = 30;
const double textSize_title = 30;
const double textSize_nor = 20;

class SelectMeetTransportationDialog extends StatefulWidget {
  const SelectMeetTransportationDialog({super.key});

  @override
  State<SelectMeetTransportationDialog> createState() =>
      _SelectMeetTransportationDialogState();
}

class _SelectMeetTransportationDialogState
    extends State<SelectMeetTransportationDialog> {
  String dropdownTraffic = trafficList.first;

  @override
  Widget build(BuildContext context) {
    print(dropdownTraffic);
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(dialogBgRadius),
            ),
          ),
          Text(
            '선택해주세요!',
            style: TextStyle(fontSize: textSize_title),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  '약속장소로 이동할 교통수단은',
                  style: TextStyle(fontSize: 30),
                ),
                // DropDown
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            border:
                                Border.all(color: Colors.amberAccent, width: 3),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropdownButton(
                            value: dropdownTraffic,
                            items: trafficList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newTraffic) {
                              setState(() {
                                dropdownTraffic = newTraffic!;
                                print(dropdownTraffic);
                              });
                            },
                            icon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: const Icon(
                                Icons.arrow_drop_down_circle,
                                color: Colors.amberAccent,
                                size: 15,
                              ),
                            ),
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                            dropdownColor: Colors.white,
                            underline: Container(),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '입니다.',
                      style: TextStyle(fontSize: textSize_title),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        // [취소] 버튼
                        onPressed: () {
                          print('Dialog 닫기');
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          '취소',
                          style: TextStyle(fontSize: textSize_nor),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white70,
                            elevation: 10,
                            minimumSize: Size(buttonWidth, buttonHeight)),
                      ),
                      Container(
                        // [정하기] Button
                        margin: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            print('약속장소 정하기 화면 이동!!');
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MeetPlaceSetScreen(),
                                fullscreenDialog: true,
                              ),
                            );
                          },
                          child: Text(
                            '정하기',
                            style: TextStyle(fontSize: textSize_nor),
                          ),
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.white70,
                              elevation: 10,
                              minimumSize: Size(buttonWidth, buttonHeight)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
