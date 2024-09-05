import 'package:flutter/cupertino.dart';

import '../../../../../domain/model/display/place/place.model.dart';
import 'like_place_item_widget.dart';

class LikePlaceWidget extends StatefulWidget {

  final List<Place> placeList;

  const LikePlaceWidget({
    super.key,
    required this.placeList,
  });

  @override
  State<LikePlaceWidget> createState() => _LikePlaceWidgetState();
}

class _LikePlaceWidgetState extends State<LikePlaceWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.placeList.length,
      itemBuilder: (context, index) {
        return LikePlaceItemWidget(place : widget.placeList[index]);
      },
    );
  }
}
