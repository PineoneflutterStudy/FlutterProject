// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planner.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Planner _$PlannerFromJson(Map<String, dynamic> json) {
  return _Planner.fromJson(json);
}

/// @nodoc
mixin _$Planner {
  String get planner_id => throw _privateConstructorUsedError;
  String get planner_title => throw _privateConstructorUsedError;
  List<PlannerPage> get planner_page_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlannerCopyWith<Planner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerCopyWith<$Res> {
  factory $PlannerCopyWith(Planner value, $Res Function(Planner) then) =
      _$PlannerCopyWithImpl<$Res, Planner>;
  @useResult
  $Res call(
      {String planner_id,
      String planner_title,
      List<PlannerPage> planner_page_list});
}

/// @nodoc
class _$PlannerCopyWithImpl<$Res, $Val extends Planner>
    implements $PlannerCopyWith<$Res> {
  _$PlannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planner_id = null,
    Object? planner_title = null,
    Object? planner_page_list = null,
  }) {
    return _then(_value.copyWith(
      planner_id: null == planner_id
          ? _value.planner_id
          : planner_id // ignore: cast_nullable_to_non_nullable
              as String,
      planner_title: null == planner_title
          ? _value.planner_title
          : planner_title // ignore: cast_nullable_to_non_nullable
              as String,
      planner_page_list: null == planner_page_list
          ? _value.planner_page_list
          : planner_page_list // ignore: cast_nullable_to_non_nullable
              as List<PlannerPage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlannerImplCopyWith<$Res> implements $PlannerCopyWith<$Res> {
  factory _$$PlannerImplCopyWith(
          _$PlannerImpl value, $Res Function(_$PlannerImpl) then) =
      __$$PlannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String planner_id,
      String planner_title,
      List<PlannerPage> planner_page_list});
}

/// @nodoc
class __$$PlannerImplCopyWithImpl<$Res>
    extends _$PlannerCopyWithImpl<$Res, _$PlannerImpl>
    implements _$$PlannerImplCopyWith<$Res> {
  __$$PlannerImplCopyWithImpl(
      _$PlannerImpl _value, $Res Function(_$PlannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planner_id = null,
    Object? planner_title = null,
    Object? planner_page_list = null,
  }) {
    return _then(_$PlannerImpl(
      planner_id: null == planner_id
          ? _value.planner_id
          : planner_id // ignore: cast_nullable_to_non_nullable
              as String,
      planner_title: null == planner_title
          ? _value.planner_title
          : planner_title // ignore: cast_nullable_to_non_nullable
              as String,
      planner_page_list: null == planner_page_list
          ? _value._planner_page_list
          : planner_page_list // ignore: cast_nullable_to_non_nullable
              as List<PlannerPage>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlannerImpl with DiagnosticableTreeMixin implements _Planner {
  const _$PlannerImpl(
      {required this.planner_id,
      this.planner_title = 'plan',
      final List<PlannerPage> planner_page_list = const []})
      : _planner_page_list = planner_page_list;

  factory _$PlannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannerImplFromJson(json);

  @override
  final String planner_id;
  @override
  @JsonKey()
  final String planner_title;
  final List<PlannerPage> _planner_page_list;
  @override
  @JsonKey()
  List<PlannerPage> get planner_page_list {
    if (_planner_page_list is EqualUnmodifiableListView)
      return _planner_page_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planner_page_list);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Planner(planner_id: $planner_id, planner_title: $planner_title, planner_page_list: $planner_page_list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Planner'))
      ..add(DiagnosticsProperty('planner_id', planner_id))
      ..add(DiagnosticsProperty('planner_title', planner_title))
      ..add(DiagnosticsProperty('planner_page_list', planner_page_list));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerImpl &&
            (identical(other.planner_id, planner_id) ||
                other.planner_id == planner_id) &&
            (identical(other.planner_title, planner_title) ||
                other.planner_title == planner_title) &&
            const DeepCollectionEquality()
                .equals(other._planner_page_list, _planner_page_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, planner_id, planner_title,
      const DeepCollectionEquality().hash(_planner_page_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerImplCopyWith<_$PlannerImpl> get copyWith =>
      __$$PlannerImplCopyWithImpl<_$PlannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannerImplToJson(
      this,
    );
  }
}

abstract class _Planner implements Planner {
  const factory _Planner(
      {required final String planner_id,
      final String planner_title,
      final List<PlannerPage> planner_page_list}) = _$PlannerImpl;

  factory _Planner.fromJson(Map<String, dynamic> json) = _$PlannerImpl.fromJson;

  @override
  String get planner_id;
  @override
  String get planner_title;
  @override
  List<PlannerPage> get planner_page_list;
  @override
  @JsonKey(ignore: true)
  _$$PlannerImplCopyWith<_$PlannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlannerPage _$PlannerPageFromJson(Map<String, dynamic> json) {
  return _PlannerPage.fromJson(json);
}

/// @nodoc
mixin _$PlannerPage {
  String get location => throw _privateConstructorUsedError;
  List<PlannerItem> get page_item_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlannerPageCopyWith<PlannerPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerPageCopyWith<$Res> {
  factory $PlannerPageCopyWith(
          PlannerPage value, $Res Function(PlannerPage) then) =
      _$PlannerPageCopyWithImpl<$Res, PlannerPage>;
  @useResult
  $Res call({String location, List<PlannerItem> page_item_list});
}

/// @nodoc
class _$PlannerPageCopyWithImpl<$Res, $Val extends PlannerPage>
    implements $PlannerPageCopyWith<$Res> {
  _$PlannerPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? page_item_list = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      page_item_list: null == page_item_list
          ? _value.page_item_list
          : page_item_list // ignore: cast_nullable_to_non_nullable
              as List<PlannerItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlannerPageImplCopyWith<$Res>
    implements $PlannerPageCopyWith<$Res> {
  factory _$$PlannerPageImplCopyWith(
          _$PlannerPageImpl value, $Res Function(_$PlannerPageImpl) then) =
      __$$PlannerPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String location, List<PlannerItem> page_item_list});
}

/// @nodoc
class __$$PlannerPageImplCopyWithImpl<$Res>
    extends _$PlannerPageCopyWithImpl<$Res, _$PlannerPageImpl>
    implements _$$PlannerPageImplCopyWith<$Res> {
  __$$PlannerPageImplCopyWithImpl(
      _$PlannerPageImpl _value, $Res Function(_$PlannerPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? page_item_list = null,
  }) {
    return _then(_$PlannerPageImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      page_item_list: null == page_item_list
          ? _value._page_item_list
          : page_item_list // ignore: cast_nullable_to_non_nullable
              as List<PlannerItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlannerPageImpl with DiagnosticableTreeMixin implements _PlannerPage {
  const _$PlannerPageImpl(
      {required this.location,
      final List<PlannerItem> page_item_list = const []})
      : _page_item_list = page_item_list;

  factory _$PlannerPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannerPageImplFromJson(json);

  @override
  final String location;
  final List<PlannerItem> _page_item_list;
  @override
  @JsonKey()
  List<PlannerItem> get page_item_list {
    if (_page_item_list is EqualUnmodifiableListView) return _page_item_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_page_item_list);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlannerPage(location: $location, page_item_list: $page_item_list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlannerPage'))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('page_item_list', page_item_list));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerPageImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._page_item_list, _page_item_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location,
      const DeepCollectionEquality().hash(_page_item_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerPageImplCopyWith<_$PlannerPageImpl> get copyWith =>
      __$$PlannerPageImplCopyWithImpl<_$PlannerPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannerPageImplToJson(
      this,
    );
  }
}

abstract class _PlannerPage implements PlannerPage {
  const factory _PlannerPage(
      {required final String location,
      final List<PlannerItem> page_item_list}) = _$PlannerPageImpl;

  factory _PlannerPage.fromJson(Map<String, dynamic> json) =
      _$PlannerPageImpl.fromJson;

  @override
  String get location;
  @override
  List<PlannerItem> get page_item_list;
  @override
  @JsonKey(ignore: true)
  _$$PlannerPageImplCopyWith<_$PlannerPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlannerItem _$PlannerItemFromJson(Map<String, dynamic> json) {
  return _PlannerItem.fromJson(json);
}

/// @nodoc
mixin _$PlannerItem {
  Address? get prev_address_info => throw _privateConstructorUsedError;
  String? get prev_place_id => throw _privateConstructorUsedError;
  Address get cur_address_info => throw _privateConstructorUsedError;
  String get place_name => throw _privateConstructorUsedError;
  String? get cur_place_id => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String get end_time => throw _privateConstructorUsedError;
  String? get stay_time => throw _privateConstructorUsedError; // 이용시간
  String? get distance => throw _privateConstructorUsedError; // 이전장소와의 거리
  String? get transportation => throw _privateConstructorUsedError; //이동수단
  String? get travel_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlannerItemCopyWith<PlannerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerItemCopyWith<$Res> {
  factory $PlannerItemCopyWith(
          PlannerItem value, $Res Function(PlannerItem) then) =
      _$PlannerItemCopyWithImpl<$Res, PlannerItem>;
  @useResult
  $Res call(
      {Address? prev_address_info,
      String? prev_place_id,
      Address cur_address_info,
      String place_name,
      String? cur_place_id,
      String? start_time,
      String end_time,
      String? stay_time,
      String? distance,
      String? transportation,
      String? travel_time});

  $AddressCopyWith<$Res>? get prev_address_info;
  $AddressCopyWith<$Res> get cur_address_info;
}

/// @nodoc
class _$PlannerItemCopyWithImpl<$Res, $Val extends PlannerItem>
    implements $PlannerItemCopyWith<$Res> {
  _$PlannerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev_address_info = freezed,
    Object? prev_place_id = freezed,
    Object? cur_address_info = null,
    Object? place_name = null,
    Object? cur_place_id = freezed,
    Object? start_time = freezed,
    Object? end_time = null,
    Object? stay_time = freezed,
    Object? distance = freezed,
    Object? transportation = freezed,
    Object? travel_time = freezed,
  }) {
    return _then(_value.copyWith(
      prev_address_info: freezed == prev_address_info
          ? _value.prev_address_info
          : prev_address_info // ignore: cast_nullable_to_non_nullable
              as Address?,
      prev_place_id: freezed == prev_place_id
          ? _value.prev_place_id
          : prev_place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cur_address_info: null == cur_address_info
          ? _value.cur_address_info
          : cur_address_info // ignore: cast_nullable_to_non_nullable
              as Address,
      place_name: null == place_name
          ? _value.place_name
          : place_name // ignore: cast_nullable_to_non_nullable
              as String,
      cur_place_id: freezed == cur_place_id
          ? _value.cur_place_id
          : cur_place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: null == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String,
      stay_time: freezed == stay_time
          ? _value.stay_time
          : stay_time // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      transportation: freezed == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String?,
      travel_time: freezed == travel_time
          ? _value.travel_time
          : travel_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get prev_address_info {
    if (_value.prev_address_info == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.prev_address_info!, (value) {
      return _then(_value.copyWith(prev_address_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get cur_address_info {
    return $AddressCopyWith<$Res>(_value.cur_address_info, (value) {
      return _then(_value.copyWith(cur_address_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlannerItemImplCopyWith<$Res>
    implements $PlannerItemCopyWith<$Res> {
  factory _$$PlannerItemImplCopyWith(
          _$PlannerItemImpl value, $Res Function(_$PlannerItemImpl) then) =
      __$$PlannerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address? prev_address_info,
      String? prev_place_id,
      Address cur_address_info,
      String place_name,
      String? cur_place_id,
      String? start_time,
      String end_time,
      String? stay_time,
      String? distance,
      String? transportation,
      String? travel_time});

  @override
  $AddressCopyWith<$Res>? get prev_address_info;
  @override
  $AddressCopyWith<$Res> get cur_address_info;
}

/// @nodoc
class __$$PlannerItemImplCopyWithImpl<$Res>
    extends _$PlannerItemCopyWithImpl<$Res, _$PlannerItemImpl>
    implements _$$PlannerItemImplCopyWith<$Res> {
  __$$PlannerItemImplCopyWithImpl(
      _$PlannerItemImpl _value, $Res Function(_$PlannerItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev_address_info = freezed,
    Object? prev_place_id = freezed,
    Object? cur_address_info = null,
    Object? place_name = null,
    Object? cur_place_id = freezed,
    Object? start_time = freezed,
    Object? end_time = null,
    Object? stay_time = freezed,
    Object? distance = freezed,
    Object? transportation = freezed,
    Object? travel_time = freezed,
  }) {
    return _then(_$PlannerItemImpl(
      prev_address_info: freezed == prev_address_info
          ? _value.prev_address_info
          : prev_address_info // ignore: cast_nullable_to_non_nullable
              as Address?,
      prev_place_id: freezed == prev_place_id
          ? _value.prev_place_id
          : prev_place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cur_address_info: null == cur_address_info
          ? _value.cur_address_info
          : cur_address_info // ignore: cast_nullable_to_non_nullable
              as Address,
      place_name: null == place_name
          ? _value.place_name
          : place_name // ignore: cast_nullable_to_non_nullable
              as String,
      cur_place_id: freezed == cur_place_id
          ? _value.cur_place_id
          : cur_place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: null == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String,
      stay_time: freezed == stay_time
          ? _value.stay_time
          : stay_time // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      transportation: freezed == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String?,
      travel_time: freezed == travel_time
          ? _value.travel_time
          : travel_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlannerItemImpl with DiagnosticableTreeMixin implements _PlannerItem {
  const _$PlannerItemImpl(
      {this.prev_address_info,
      this.prev_place_id,
      required this.cur_address_info,
      required this.place_name,
      this.cur_place_id,
      this.start_time,
      required this.end_time,
      this.stay_time,
      this.distance,
      this.transportation,
      this.travel_time});

  factory _$PlannerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannerItemImplFromJson(json);

  @override
  final Address? prev_address_info;
  @override
  final String? prev_place_id;
  @override
  final Address cur_address_info;
  @override
  final String place_name;
  @override
  final String? cur_place_id;
  @override
  final String? start_time;
  @override
  final String end_time;
  @override
  final String? stay_time;
// 이용시간
  @override
  final String? distance;
// 이전장소와의 거리
  @override
  final String? transportation;
//이동수단
  @override
  final String? travel_time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlannerItem(prev_address_info: $prev_address_info, prev_place_id: $prev_place_id, cur_address_info: $cur_address_info, place_name: $place_name, cur_place_id: $cur_place_id, start_time: $start_time, end_time: $end_time, stay_time: $stay_time, distance: $distance, transportation: $transportation, travel_time: $travel_time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlannerItem'))
      ..add(DiagnosticsProperty('prev_address_info', prev_address_info))
      ..add(DiagnosticsProperty('prev_place_id', prev_place_id))
      ..add(DiagnosticsProperty('cur_address_info', cur_address_info))
      ..add(DiagnosticsProperty('place_name', place_name))
      ..add(DiagnosticsProperty('cur_place_id', cur_place_id))
      ..add(DiagnosticsProperty('start_time', start_time))
      ..add(DiagnosticsProperty('end_time', end_time))
      ..add(DiagnosticsProperty('stay_time', stay_time))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('transportation', transportation))
      ..add(DiagnosticsProperty('travel_time', travel_time));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerItemImpl &&
            (identical(other.prev_address_info, prev_address_info) ||
                other.prev_address_info == prev_address_info) &&
            (identical(other.prev_place_id, prev_place_id) ||
                other.prev_place_id == prev_place_id) &&
            (identical(other.cur_address_info, cur_address_info) ||
                other.cur_address_info == cur_address_info) &&
            (identical(other.place_name, place_name) ||
                other.place_name == place_name) &&
            (identical(other.cur_place_id, cur_place_id) ||
                other.cur_place_id == cur_place_id) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.stay_time, stay_time) ||
                other.stay_time == stay_time) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.travel_time, travel_time) ||
                other.travel_time == travel_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      prev_address_info,
      prev_place_id,
      cur_address_info,
      place_name,
      cur_place_id,
      start_time,
      end_time,
      stay_time,
      distance,
      transportation,
      travel_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerItemImplCopyWith<_$PlannerItemImpl> get copyWith =>
      __$$PlannerItemImplCopyWithImpl<_$PlannerItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannerItemImplToJson(
      this,
    );
  }
}

abstract class _PlannerItem implements PlannerItem {
  const factory _PlannerItem(
      {final Address? prev_address_info,
      final String? prev_place_id,
      required final Address cur_address_info,
      required final String place_name,
      final String? cur_place_id,
      final String? start_time,
      required final String end_time,
      final String? stay_time,
      final String? distance,
      final String? transportation,
      final String? travel_time}) = _$PlannerItemImpl;

  factory _PlannerItem.fromJson(Map<String, dynamic> json) =
      _$PlannerItemImpl.fromJson;

  @override
  Address? get prev_address_info;
  @override
  String? get prev_place_id;
  @override
  Address get cur_address_info;
  @override
  String get place_name;
  @override
  String? get cur_place_id;
  @override
  String? get start_time;
  @override
  String get end_time;
  @override
  String? get stay_time;
  @override // 이용시간
  String? get distance;
  @override // 이전장소와의 거리
  String? get transportation;
  @override //이동수단
  String? get travel_time;
  @override
  @JsonKey(ignore: true)
  _$$PlannerItemImplCopyWith<_$PlannerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
