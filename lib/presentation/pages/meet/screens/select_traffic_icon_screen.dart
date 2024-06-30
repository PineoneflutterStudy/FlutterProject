import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../domain/model/meet/meet_traffic_model.dart';

class SelectTrafficIconScreen extends StatefulWidget {

  final List<MeetTrafficModel> trafficList;
  const SelectTrafficIconScreen({super.key, required this.trafficList});

  @override
  State<SelectTrafficIconScreen> createState() =>
      _SelectTrafficIconScreenState();
}

class _SelectTrafficIconScreenState extends State<SelectTrafficIconScreen> {
  List<List<String>> trafficImages = [
    [AppIcons.ImgNonSelectCar, AppIcons.ImgSelectCar], // car images
    [AppIcons.ImgNonSelectSubway, AppIcons.ImgSelectSubway], // subway images
    [AppIcons.ImgNonSelectWalk, AppIcons.ImgSelectWalk], // walk images
  ];

  String selectTraffic = "";
  bool isTextVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: widget.trafficList.asMap().entries.map(
            (entry) {
              int index = entry.key;
              MeetTrafficModel traffic = entry.value;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    print('${traffic.traffic} 을 선택');
                    isTextVisible = true;
                    tapImageButton(index);
                  },
                  child: Image.asset(trafficImages[index][traffic.imageIndex],
                      width: 50, height: 50),
                ),
              );
            },
          ).toList(),
        ),
        SizedBox(
          height: 10,
        ),
        Visibility(
          visible: isTextVisible,
          child: Text(
            '$selectTraffic 을(를) 이용합니다.',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }

  void tapImageButton(int index) {
    setState(() {
      for (int i = 0; i < widget.trafficList.length; i++) {
        if (index == i) {
          widget.trafficList[i].imageIndex = 1;
          selectTraffic = widget.trafficList[i].traffic;
          switch (widget.trafficList[i].traffic) {
            case 'car':
              selectTraffic = '자가용';
            case 'subway':
              selectTraffic = '지하철';
            case 'walk':
              selectTraffic = '도보';
          }
        } else {
          widget.trafficList[i].imageIndex = 0;
        }
      }
      print('선택한 교통수단 : $selectTraffic');
    });
  }
}
