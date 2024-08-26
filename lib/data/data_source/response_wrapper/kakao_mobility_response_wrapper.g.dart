// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_mobility_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KakaoMobilityResponseWrapperImpl<T>
    _$$KakaoMobilityResponseWrapperImplFromJson<T>(Map<String, dynamic> json) =>
        _$KakaoMobilityResponseWrapperImpl<T>(
          trans_id: json['trans_id'] as String,
          routes: json['routes'][0] == null
              ? null
              : Routes.fromJson(json['routes'][0] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$KakaoMobilityResponseWrapperImplToJson<T>(
        _$KakaoMobilityResponseWrapperImpl<T> instance) =>
    <String, dynamic>{
      'trans_id': instance.trans_id,
      'routes': instance.routes,
    };

_$RoutesImpl _$$RoutesImplFromJson(Map<String, dynamic> json) => _$RoutesImpl(
      result_code: (json['result_code'] as num).toInt(),
      result_msg: json['result_msg'] as String,
      summary: json['summary'] == null
          ? null
          : Summary.fromJson(json['summary'] as Map<String, dynamic>),
      sections: json['sections'][0] == null
          ? null
          : Sections.fromJson(json['sections'][0] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RoutesImplToJson(_$RoutesImpl instance) =>
    <String, dynamic>{
      'result_code': instance.result_code,
      'result_msg': instance.result_msg,
      'summary': instance.summary,
      'sections': instance.sections,
    };

_$SummaryImpl _$$SummaryImplFromJson(Map<String, dynamic> json) =>
    _$SummaryImpl(
      origin: json['origin'] == null
          ? null
          : Origin.fromJson(json['origin'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : Destination.fromJson(json['destination'] as Map<String, dynamic>),
      waypoints: json['waypoints'] as List<dynamic>?,
      priority: json['priority'] as String,
      bound: json['bound'] == null
          ? null
          : Bound.fromJson(json['bound'] as Map<String, dynamic>),
      fare: json['fare'] == null
          ? null
          : Fare.fromJson(json['fare'] as Map<String, dynamic>),
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$SummaryImplToJson(_$SummaryImpl instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'waypoints': instance.waypoints,
      'priority': instance.priority,
      'bound': instance.bound,
      'fare': instance.fare,
      'distance': instance.distance,
      'duration': instance.duration,
    };

_$OriginImpl _$$OriginImplFromJson(Map<String, dynamic> json) => _$OriginImpl(
      name: json['name'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$OriginImplToJson(_$OriginImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'x': instance.x,
      'y': instance.y,
    };

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      name: json['name'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'x': instance.x,
      'y': instance.y,
    };

_$BoundImpl _$$BoundImplFromJson(Map<String, dynamic> json) => _$BoundImpl(
      min_x: (json['min_x'] as num).toDouble(),
      min_y: (json['min_y'] as num).toDouble(),
      max_x: (json['max_x'] as num).toDouble(),
      max_y: (json['max_y'] as num).toDouble(),
    );

Map<String, dynamic> _$$BoundImplToJson(_$BoundImpl instance) =>
    <String, dynamic>{
      'min_x': instance.min_x,
      'min_y': instance.min_y,
      'max_x': instance.max_x,
      'max_y': instance.max_y,
    };

_$FareImpl _$$FareImplFromJson(Map<String, dynamic> json) => _$FareImpl(
      taxi: (json['taxi'] as num).toInt(),
      toll: (json['toll'] as num).toInt(),
    );

Map<String, dynamic> _$$FareImplToJson(_$FareImpl instance) =>
    <String, dynamic>{
      'taxi': instance.taxi,
      'toll': instance.toll,
    };

_$SectionsImpl _$$SectionsImplFromJson(Map<String, dynamic> json) =>
    _$SectionsImpl(
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      bound: json['bound'] == null
          ? null
          : Bound.fromJson(json['bound'] as Map<String, dynamic>),
      roads: (json['roads'] as List<dynamic>?)
          ?.map(
              (e) => MobilityDirectionsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      guides: json['guides'] as List<dynamic>?,
    );

Map<String, dynamic> _$$SectionsImplToJson(_$SectionsImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'bound': instance.bound,
      'roads': instance.roads,
      'guides': instance.guides,
    };
