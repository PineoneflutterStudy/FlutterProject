// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_db.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDbModelImpl _$$LocationDbModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDbModelImpl(
      location_id: json['location_id'] as String,
      starting_point_list: (json['starting_point_list'] as List<dynamic>?)
              ?.map((e) => MeetAddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      destination_point: (json['destination_point'] as List<dynamic>?)
              ?.map(
                  (e) => TourLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LocationDbModelImplToJson(
        _$LocationDbModelImpl instance) =>
    <String, dynamic>{
      'location_id': instance.location_id,
      'starting_point_list': instance.starting_point_list,
      'destination_point': instance.destination_point,
    };
