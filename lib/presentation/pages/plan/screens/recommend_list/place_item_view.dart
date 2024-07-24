import 'package:flutter/material.dart';

import '../../../../../domain/model/display/place/place.model.dart';

class PlaceItemView extends StatelessWidget {
  final Place place;

  const PlaceItemView(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(place.placeName ?? ''),
      subtitle: Text(place.addressName ?? ''),
      // Add more place details here if needed
    );
  }
}