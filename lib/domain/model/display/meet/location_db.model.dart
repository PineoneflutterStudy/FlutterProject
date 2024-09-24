import 'package:freezed_annotation/freezed_annotation.dart';

import 'meet_address.model.dart';
import 'tour_location.model.dart';

part 'location_db.model.freezed.dart';
part 'location_db.model.g.dart';

@freezed
class LocationDbModel with _$LocationDbModel {
  const factory LocationDbModel({
    required String location_id,
    @Default([]) List<MeetAddressModel> starting_point_list,
    @Default([]) List<TourLocationModel> destination_point,
    required int delete_check,
  }) = _LocationDbModel;



  factory LocationDbModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDbModelFromJson(json);
}