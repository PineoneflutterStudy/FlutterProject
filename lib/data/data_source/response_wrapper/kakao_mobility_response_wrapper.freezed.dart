// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kakao_mobility_response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KakaoMobilityResponseWrapper<T> _$KakaoMobilityResponseWrapperFromJson<T>(
    Map<String, dynamic> json) {
  return _KakaoMobilityResponseWrapper<T>.fromJson(json);
}

/// @nodoc
mixin _$KakaoMobilityResponseWrapper<T> {
  String get trans_id => throw _privateConstructorUsedError;
  Routes? get routes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoMobilityResponseWrapperCopyWith<T, KakaoMobilityResponseWrapper<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoMobilityResponseWrapperCopyWith<T, $Res> {
  factory $KakaoMobilityResponseWrapperCopyWith(
          KakaoMobilityResponseWrapper<T> value,
          $Res Function(KakaoMobilityResponseWrapper<T>) then) =
      _$KakaoMobilityResponseWrapperCopyWithImpl<T, $Res,
          KakaoMobilityResponseWrapper<T>>;
  @useResult
  $Res call({String trans_id, Routes? routes});

  $RoutesCopyWith<$Res>? get routes;
}

/// @nodoc
class _$KakaoMobilityResponseWrapperCopyWithImpl<T, $Res,
        $Val extends KakaoMobilityResponseWrapper<T>>
    implements $KakaoMobilityResponseWrapperCopyWith<T, $Res> {
  _$KakaoMobilityResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans_id = null,
    Object? routes = freezed,
  }) {
    return _then(_value.copyWith(
      trans_id: null == trans_id
          ? _value.trans_id
          : trans_id // ignore: cast_nullable_to_non_nullable
              as String,
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as Routes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoutesCopyWith<$Res>? get routes {
    if (_value.routes == null) {
      return null;
    }

    return $RoutesCopyWith<$Res>(_value.routes!, (value) {
      return _then(_value.copyWith(routes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KakaoMobilityResponseWrapperImplCopyWith<T, $Res>
    implements $KakaoMobilityResponseWrapperCopyWith<T, $Res> {
  factory _$$KakaoMobilityResponseWrapperImplCopyWith(
          _$KakaoMobilityResponseWrapperImpl<T> value,
          $Res Function(_$KakaoMobilityResponseWrapperImpl<T>) then) =
      __$$KakaoMobilityResponseWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String trans_id, Routes? routes});

  @override
  $RoutesCopyWith<$Res>? get routes;
}

/// @nodoc
class __$$KakaoMobilityResponseWrapperImplCopyWithImpl<T, $Res>
    extends _$KakaoMobilityResponseWrapperCopyWithImpl<T, $Res,
        _$KakaoMobilityResponseWrapperImpl<T>>
    implements _$$KakaoMobilityResponseWrapperImplCopyWith<T, $Res> {
  __$$KakaoMobilityResponseWrapperImplCopyWithImpl(
      _$KakaoMobilityResponseWrapperImpl<T> _value,
      $Res Function(_$KakaoMobilityResponseWrapperImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans_id = null,
    Object? routes = freezed,
  }) {
    return _then(_$KakaoMobilityResponseWrapperImpl<T>(
      trans_id: null == trans_id
          ? _value.trans_id
          : trans_id // ignore: cast_nullable_to_non_nullable
              as String,
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as Routes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KakaoMobilityResponseWrapperImpl<T>
    implements _KakaoMobilityResponseWrapper<T> {
  const _$KakaoMobilityResponseWrapperImpl(
      {required this.trans_id, this.routes});

  factory _$KakaoMobilityResponseWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KakaoMobilityResponseWrapperImplFromJson(json);

  @override
  final String trans_id;
  @override
  final Routes? routes;

  @override
  String toString() {
    return 'KakaoMobilityResponseWrapper<$T>(trans_id: $trans_id, routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KakaoMobilityResponseWrapperImpl<T> &&
            (identical(other.trans_id, trans_id) ||
                other.trans_id == trans_id) &&
            (identical(other.routes, routes) || other.routes == routes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trans_id, routes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KakaoMobilityResponseWrapperImplCopyWith<T,
          _$KakaoMobilityResponseWrapperImpl<T>>
      get copyWith => __$$KakaoMobilityResponseWrapperImplCopyWithImpl<T,
          _$KakaoMobilityResponseWrapperImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KakaoMobilityResponseWrapperImplToJson<T>(
      this,
    );
  }
}

abstract class _KakaoMobilityResponseWrapper<T>
    implements KakaoMobilityResponseWrapper<T> {
  const factory _KakaoMobilityResponseWrapper(
      {required final String trans_id,
      final Routes? routes}) = _$KakaoMobilityResponseWrapperImpl<T>;

  factory _KakaoMobilityResponseWrapper.fromJson(Map<String, dynamic> json) =
      _$KakaoMobilityResponseWrapperImpl<T>.fromJson;

  @override
  String get trans_id;
  @override
  Routes? get routes;
  @override
  @JsonKey(ignore: true)
  _$$KakaoMobilityResponseWrapperImplCopyWith<T,
          _$KakaoMobilityResponseWrapperImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

Routes _$RoutesFromJson(Map<String, dynamic> json) {
  return _Routes.fromJson(json);
}

/// @nodoc
mixin _$Routes {
  int get result_code => throw _privateConstructorUsedError;
  String get result_msg => throw _privateConstructorUsedError;
  Summary? get summary => throw _privateConstructorUsedError;
  Sections? get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutesCopyWith<Routes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesCopyWith<$Res> {
  factory $RoutesCopyWith(Routes value, $Res Function(Routes) then) =
      _$RoutesCopyWithImpl<$Res, Routes>;
  @useResult
  $Res call(
      {int result_code,
      String result_msg,
      Summary? summary,
      Sections? sections});

  $SummaryCopyWith<$Res>? get summary;
  $SectionsCopyWith<$Res>? get sections;
}

/// @nodoc
class _$RoutesCopyWithImpl<$Res, $Val extends Routes>
    implements $RoutesCopyWith<$Res> {
  _$RoutesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result_code = null,
    Object? result_msg = null,
    Object? summary = freezed,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      result_code: null == result_code
          ? _value.result_code
          : result_code // ignore: cast_nullable_to_non_nullable
              as int,
      result_msg: null == result_msg
          ? _value.result_msg
          : result_msg // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as Sections?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $SummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionsCopyWith<$Res>? get sections {
    if (_value.sections == null) {
      return null;
    }

    return $SectionsCopyWith<$Res>(_value.sections!, (value) {
      return _then(_value.copyWith(sections: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutesImplCopyWith<$Res> implements $RoutesCopyWith<$Res> {
  factory _$$RoutesImplCopyWith(
          _$RoutesImpl value, $Res Function(_$RoutesImpl) then) =
      __$$RoutesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int result_code,
      String result_msg,
      Summary? summary,
      Sections? sections});

  @override
  $SummaryCopyWith<$Res>? get summary;
  @override
  $SectionsCopyWith<$Res>? get sections;
}

/// @nodoc
class __$$RoutesImplCopyWithImpl<$Res>
    extends _$RoutesCopyWithImpl<$Res, _$RoutesImpl>
    implements _$$RoutesImplCopyWith<$Res> {
  __$$RoutesImplCopyWithImpl(
      _$RoutesImpl _value, $Res Function(_$RoutesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result_code = null,
    Object? result_msg = null,
    Object? summary = freezed,
    Object? sections = freezed,
  }) {
    return _then(_$RoutesImpl(
      result_code: null == result_code
          ? _value.result_code
          : result_code // ignore: cast_nullable_to_non_nullable
              as int,
      result_msg: null == result_msg
          ? _value.result_msg
          : result_msg // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as Sections?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutesImpl implements _Routes {
  const _$RoutesImpl(
      {required this.result_code,
      required this.result_msg,
      this.summary,
      this.sections});

  factory _$RoutesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutesImplFromJson(json);

  @override
  final int result_code;
  @override
  final String result_msg;
  @override
  final Summary? summary;
  @override
  final Sections? sections;

  @override
  String toString() {
    return 'Routes(result_code: $result_code, result_msg: $result_msg, summary: $summary, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutesImpl &&
            (identical(other.result_code, result_code) ||
                other.result_code == result_code) &&
            (identical(other.result_msg, result_msg) ||
                other.result_msg == result_msg) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.sections, sections) ||
                other.sections == sections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result_code, result_msg, summary, sections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutesImplCopyWith<_$RoutesImpl> get copyWith =>
      __$$RoutesImplCopyWithImpl<_$RoutesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutesImplToJson(
      this,
    );
  }
}

abstract class _Routes implements Routes {
  const factory _Routes(
      {required final int result_code,
      required final String result_msg,
      final Summary? summary,
      final Sections? sections}) = _$RoutesImpl;

  factory _Routes.fromJson(Map<String, dynamic> json) = _$RoutesImpl.fromJson;

  @override
  int get result_code;
  @override
  String get result_msg;
  @override
  Summary? get summary;
  @override
  Sections? get sections;
  @override
  @JsonKey(ignore: true)
  _$$RoutesImplCopyWith<_$RoutesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
mixin _$Summary {
  Origin? get origin => throw _privateConstructorUsedError;
  Destination? get destination => throw _privateConstructorUsedError;
  List<dynamic>? get waypoints => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  Bound? get bound => throw _privateConstructorUsedError;
  Fare? get fare => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res, Summary>;
  @useResult
  $Res call(
      {Origin? origin,
      Destination? destination,
      List<dynamic>? waypoints,
      String priority,
      Bound? bound,
      Fare? fare,
      int distance,
      int duration});

  $OriginCopyWith<$Res>? get origin;
  $DestinationCopyWith<$Res>? get destination;
  $BoundCopyWith<$Res>? get bound;
  $FareCopyWith<$Res>? get fare;
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res, $Val extends Summary>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? waypoints = freezed,
    Object? priority = null,
    Object? bound = freezed,
    Object? fare = freezed,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination?,
      waypoints: freezed == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      bound: freezed == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound?,
      fare: freezed == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as Fare?,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OriginCopyWith<$Res>? get origin {
    if (_value.origin == null) {
      return null;
    }

    return $OriginCopyWith<$Res>(_value.origin!, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res>? get destination {
    if (_value.destination == null) {
      return null;
    }

    return $DestinationCopyWith<$Res>(_value.destination!, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundCopyWith<$Res>? get bound {
    if (_value.bound == null) {
      return null;
    }

    return $BoundCopyWith<$Res>(_value.bound!, (value) {
      return _then(_value.copyWith(bound: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FareCopyWith<$Res>? get fare {
    if (_value.fare == null) {
      return null;
    }

    return $FareCopyWith<$Res>(_value.fare!, (value) {
      return _then(_value.copyWith(fare: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SummaryImplCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$SummaryImplCopyWith(
          _$SummaryImpl value, $Res Function(_$SummaryImpl) then) =
      __$$SummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Origin? origin,
      Destination? destination,
      List<dynamic>? waypoints,
      String priority,
      Bound? bound,
      Fare? fare,
      int distance,
      int duration});

  @override
  $OriginCopyWith<$Res>? get origin;
  @override
  $DestinationCopyWith<$Res>? get destination;
  @override
  $BoundCopyWith<$Res>? get bound;
  @override
  $FareCopyWith<$Res>? get fare;
}

/// @nodoc
class __$$SummaryImplCopyWithImpl<$Res>
    extends _$SummaryCopyWithImpl<$Res, _$SummaryImpl>
    implements _$$SummaryImplCopyWith<$Res> {
  __$$SummaryImplCopyWithImpl(
      _$SummaryImpl _value, $Res Function(_$SummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? waypoints = freezed,
    Object? priority = null,
    Object? bound = freezed,
    Object? fare = freezed,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_$SummaryImpl(
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination?,
      waypoints: freezed == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      bound: freezed == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound?,
      fare: freezed == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as Fare?,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryImpl implements _Summary {
  const _$SummaryImpl(
      {this.origin,
      this.destination,
      required final List<dynamic>? waypoints,
      required this.priority,
      this.bound,
      this.fare,
      required this.distance,
      required this.duration})
      : _waypoints = waypoints;

  factory _$SummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryImplFromJson(json);

  @override
  final Origin? origin;
  @override
  final Destination? destination;
  final List<dynamic>? _waypoints;
  @override
  List<dynamic>? get waypoints {
    final value = _waypoints;
    if (value == null) return null;
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String priority;
  @override
  final Bound? bound;
  @override
  final Fare? fare;
  @override
  final int distance;
  @override
  final int duration;

  @override
  String toString() {
    return 'Summary(origin: $origin, destination: $destination, waypoints: $waypoints, priority: $priority, bound: $bound, fare: $fare, distance: $distance, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryImpl &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.fare, fare) || other.fare == fare) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      origin,
      destination,
      const DeepCollectionEquality().hash(_waypoints),
      priority,
      bound,
      fare,
      distance,
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      __$$SummaryImplCopyWithImpl<_$SummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryImplToJson(
      this,
    );
  }
}

abstract class _Summary implements Summary {
  const factory _Summary(
      {final Origin? origin,
      final Destination? destination,
      required final List<dynamic>? waypoints,
      required final String priority,
      final Bound? bound,
      final Fare? fare,
      required final int distance,
      required final int duration}) = _$SummaryImpl;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$SummaryImpl.fromJson;

  @override
  Origin? get origin;
  @override
  Destination? get destination;
  @override
  List<dynamic>? get waypoints;
  @override
  String get priority;
  @override
  Bound? get bound;
  @override
  Fare? get fare;
  @override
  int get distance;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Origin _$OriginFromJson(Map<String, dynamic> json) {
  return _Origin.fromJson(json);
}

/// @nodoc
mixin _$Origin {
  String get name => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginCopyWith<Origin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginCopyWith<$Res> {
  factory $OriginCopyWith(Origin value, $Res Function(Origin) then) =
      _$OriginCopyWithImpl<$Res, Origin>;
  @useResult
  $Res call({String name, double x, double y});
}

/// @nodoc
class _$OriginCopyWithImpl<$Res, $Val extends Origin>
    implements $OriginCopyWith<$Res> {
  _$OriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OriginImplCopyWith<$Res> implements $OriginCopyWith<$Res> {
  factory _$$OriginImplCopyWith(
          _$OriginImpl value, $Res Function(_$OriginImpl) then) =
      __$$OriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double x, double y});
}

/// @nodoc
class __$$OriginImplCopyWithImpl<$Res>
    extends _$OriginCopyWithImpl<$Res, _$OriginImpl>
    implements _$$OriginImplCopyWith<$Res> {
  __$$OriginImplCopyWithImpl(
      _$OriginImpl _value, $Res Function(_$OriginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$OriginImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginImpl implements _Origin {
  const _$OriginImpl({required this.name, required this.x, required this.y});

  factory _$OriginImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginImplFromJson(json);

  @override
  final String name;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Origin(name: $name, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith =>
      __$$OriginImplCopyWithImpl<_$OriginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginImplToJson(
      this,
    );
  }
}

abstract class _Origin implements Origin {
  const factory _Origin(
      {required final String name,
      required final double x,
      required final double y}) = _$OriginImpl;

  factory _Origin.fromJson(Map<String, dynamic> json) = _$OriginImpl.fromJson;

  @override
  String get name;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
mixin _$Destination {
  String get name => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res, Destination>;
  @useResult
  $Res call({String name, double x, double y});
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res, $Val extends Destination>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationImplCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$$DestinationImplCopyWith(
          _$DestinationImpl value, $Res Function(_$DestinationImpl) then) =
      __$$DestinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double x, double y});
}

/// @nodoc
class __$$DestinationImplCopyWithImpl<$Res>
    extends _$DestinationCopyWithImpl<$Res, _$DestinationImpl>
    implements _$$DestinationImplCopyWith<$Res> {
  __$$DestinationImplCopyWithImpl(
      _$DestinationImpl _value, $Res Function(_$DestinationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$DestinationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationImpl implements _Destination {
  const _$DestinationImpl(
      {required this.name, required this.x, required this.y});

  factory _$DestinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationImplFromJson(json);

  @override
  final String name;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Destination(name: $name, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      __$$DestinationImplCopyWithImpl<_$DestinationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationImplToJson(
      this,
    );
  }
}

abstract class _Destination implements Destination {
  const factory _Destination(
      {required final String name,
      required final double x,
      required final double y}) = _$DestinationImpl;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$DestinationImpl.fromJson;

  @override
  String get name;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bound _$BoundFromJson(Map<String, dynamic> json) {
  return _Bound.fromJson(json);
}

/// @nodoc
mixin _$Bound {
  double get min_x => throw _privateConstructorUsedError;
  double get min_y => throw _privateConstructorUsedError;
  double get max_x => throw _privateConstructorUsedError;
  double get max_y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundCopyWith<Bound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundCopyWith<$Res> {
  factory $BoundCopyWith(Bound value, $Res Function(Bound) then) =
      _$BoundCopyWithImpl<$Res, Bound>;
  @useResult
  $Res call({double min_x, double min_y, double max_x, double max_y});
}

/// @nodoc
class _$BoundCopyWithImpl<$Res, $Val extends Bound>
    implements $BoundCopyWith<$Res> {
  _$BoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min_x = null,
    Object? min_y = null,
    Object? max_x = null,
    Object? max_y = null,
  }) {
    return _then(_value.copyWith(
      min_x: null == min_x
          ? _value.min_x
          : min_x // ignore: cast_nullable_to_non_nullable
              as double,
      min_y: null == min_y
          ? _value.min_y
          : min_y // ignore: cast_nullable_to_non_nullable
              as double,
      max_x: null == max_x
          ? _value.max_x
          : max_x // ignore: cast_nullable_to_non_nullable
              as double,
      max_y: null == max_y
          ? _value.max_y
          : max_y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoundImplCopyWith<$Res> implements $BoundCopyWith<$Res> {
  factory _$$BoundImplCopyWith(
          _$BoundImpl value, $Res Function(_$BoundImpl) then) =
      __$$BoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min_x, double min_y, double max_x, double max_y});
}

/// @nodoc
class __$$BoundImplCopyWithImpl<$Res>
    extends _$BoundCopyWithImpl<$Res, _$BoundImpl>
    implements _$$BoundImplCopyWith<$Res> {
  __$$BoundImplCopyWithImpl(
      _$BoundImpl _value, $Res Function(_$BoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min_x = null,
    Object? min_y = null,
    Object? max_x = null,
    Object? max_y = null,
  }) {
    return _then(_$BoundImpl(
      min_x: null == min_x
          ? _value.min_x
          : min_x // ignore: cast_nullable_to_non_nullable
              as double,
      min_y: null == min_y
          ? _value.min_y
          : min_y // ignore: cast_nullable_to_non_nullable
              as double,
      max_x: null == max_x
          ? _value.max_x
          : max_x // ignore: cast_nullable_to_non_nullable
              as double,
      max_y: null == max_y
          ? _value.max_y
          : max_y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundImpl implements _Bound {
  const _$BoundImpl(
      {required this.min_x,
      required this.min_y,
      required this.max_x,
      required this.max_y});

  factory _$BoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundImplFromJson(json);

  @override
  final double min_x;
  @override
  final double min_y;
  @override
  final double max_x;
  @override
  final double max_y;

  @override
  String toString() {
    return 'Bound(min_x: $min_x, min_y: $min_y, max_x: $max_x, max_y: $max_y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundImpl &&
            (identical(other.min_x, min_x) || other.min_x == min_x) &&
            (identical(other.min_y, min_y) || other.min_y == min_y) &&
            (identical(other.max_x, max_x) || other.max_x == max_x) &&
            (identical(other.max_y, max_y) || other.max_y == max_y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min_x, min_y, max_x, max_y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundImplCopyWith<_$BoundImpl> get copyWith =>
      __$$BoundImplCopyWithImpl<_$BoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundImplToJson(
      this,
    );
  }
}

abstract class _Bound implements Bound {
  const factory _Bound(
      {required final double min_x,
      required final double min_y,
      required final double max_x,
      required final double max_y}) = _$BoundImpl;

  factory _Bound.fromJson(Map<String, dynamic> json) = _$BoundImpl.fromJson;

  @override
  double get min_x;
  @override
  double get min_y;
  @override
  double get max_x;
  @override
  double get max_y;
  @override
  @JsonKey(ignore: true)
  _$$BoundImplCopyWith<_$BoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fare _$FareFromJson(Map<String, dynamic> json) {
  return _Fare.fromJson(json);
}

/// @nodoc
mixin _$Fare {
  int get taxi => throw _privateConstructorUsedError;
  int get toll => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FareCopyWith<Fare> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FareCopyWith<$Res> {
  factory $FareCopyWith(Fare value, $Res Function(Fare) then) =
      _$FareCopyWithImpl<$Res, Fare>;
  @useResult
  $Res call({int taxi, int toll});
}

/// @nodoc
class _$FareCopyWithImpl<$Res, $Val extends Fare>
    implements $FareCopyWith<$Res> {
  _$FareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxi = null,
    Object? toll = null,
  }) {
    return _then(_value.copyWith(
      taxi: null == taxi
          ? _value.taxi
          : taxi // ignore: cast_nullable_to_non_nullable
              as int,
      toll: null == toll
          ? _value.toll
          : toll // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FareImplCopyWith<$Res> implements $FareCopyWith<$Res> {
  factory _$$FareImplCopyWith(
          _$FareImpl value, $Res Function(_$FareImpl) then) =
      __$$FareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taxi, int toll});
}

/// @nodoc
class __$$FareImplCopyWithImpl<$Res>
    extends _$FareCopyWithImpl<$Res, _$FareImpl>
    implements _$$FareImplCopyWith<$Res> {
  __$$FareImplCopyWithImpl(_$FareImpl _value, $Res Function(_$FareImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxi = null,
    Object? toll = null,
  }) {
    return _then(_$FareImpl(
      taxi: null == taxi
          ? _value.taxi
          : taxi // ignore: cast_nullable_to_non_nullable
              as int,
      toll: null == toll
          ? _value.toll
          : toll // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FareImpl implements _Fare {
  const _$FareImpl({required this.taxi, required this.toll});

  factory _$FareImpl.fromJson(Map<String, dynamic> json) =>
      _$$FareImplFromJson(json);

  @override
  final int taxi;
  @override
  final int toll;

  @override
  String toString() {
    return 'Fare(taxi: $taxi, toll: $toll)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FareImpl &&
            (identical(other.taxi, taxi) || other.taxi == taxi) &&
            (identical(other.toll, toll) || other.toll == toll));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taxi, toll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FareImplCopyWith<_$FareImpl> get copyWith =>
      __$$FareImplCopyWithImpl<_$FareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FareImplToJson(
      this,
    );
  }
}

abstract class _Fare implements Fare {
  const factory _Fare({required final int taxi, required final int toll}) =
      _$FareImpl;

  factory _Fare.fromJson(Map<String, dynamic> json) = _$FareImpl.fromJson;

  @override
  int get taxi;
  @override
  int get toll;
  @override
  @JsonKey(ignore: true)
  _$$FareImplCopyWith<_$FareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sections _$SectionsFromJson(Map<String, dynamic> json) {
  return _Sections.fromJson(json);
}

/// @nodoc
mixin _$Sections {
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  Bound? get bound => throw _privateConstructorUsedError;
  List<MobilityDirectionsDto>? get roads => throw _privateConstructorUsedError;
  List<dynamic>? get guides => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionsCopyWith<Sections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsCopyWith<$Res> {
  factory $SectionsCopyWith(Sections value, $Res Function(Sections) then) =
      _$SectionsCopyWithImpl<$Res, Sections>;
  @useResult
  $Res call(
      {int distance,
      int duration,
      Bound? bound,
      List<MobilityDirectionsDto>? roads,
      List<dynamic>? guides});

  $BoundCopyWith<$Res>? get bound;
}

/// @nodoc
class _$SectionsCopyWithImpl<$Res, $Val extends Sections>
    implements $SectionsCopyWith<$Res> {
  _$SectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? bound = freezed,
    Object? roads = freezed,
    Object? guides = freezed,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      bound: freezed == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound?,
      roads: freezed == roads
          ? _value.roads
          : roads // ignore: cast_nullable_to_non_nullable
              as List<MobilityDirectionsDto>?,
      guides: freezed == guides
          ? _value.guides
          : guides // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundCopyWith<$Res>? get bound {
    if (_value.bound == null) {
      return null;
    }

    return $BoundCopyWith<$Res>(_value.bound!, (value) {
      return _then(_value.copyWith(bound: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionsImplCopyWith<$Res>
    implements $SectionsCopyWith<$Res> {
  factory _$$SectionsImplCopyWith(
          _$SectionsImpl value, $Res Function(_$SectionsImpl) then) =
      __$$SectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int distance,
      int duration,
      Bound? bound,
      List<MobilityDirectionsDto>? roads,
      List<dynamic>? guides});

  @override
  $BoundCopyWith<$Res>? get bound;
}

/// @nodoc
class __$$SectionsImplCopyWithImpl<$Res>
    extends _$SectionsCopyWithImpl<$Res, _$SectionsImpl>
    implements _$$SectionsImplCopyWith<$Res> {
  __$$SectionsImplCopyWithImpl(
      _$SectionsImpl _value, $Res Function(_$SectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? bound = freezed,
    Object? roads = freezed,
    Object? guides = freezed,
  }) {
    return _then(_$SectionsImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      bound: freezed == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound?,
      roads: freezed == roads
          ? _value._roads
          : roads // ignore: cast_nullable_to_non_nullable
              as List<MobilityDirectionsDto>?,
      guides: freezed == guides
          ? _value._guides
          : guides // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionsImpl implements _Sections {
  const _$SectionsImpl(
      {required this.distance,
      required this.duration,
      this.bound,
      final List<MobilityDirectionsDto>? roads,
      required final List<dynamic>? guides})
      : _roads = roads,
        _guides = guides;

  factory _$SectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionsImplFromJson(json);

  @override
  final int distance;
  @override
  final int duration;
  @override
  final Bound? bound;
  final List<MobilityDirectionsDto>? _roads;
  @override
  List<MobilityDirectionsDto>? get roads {
    final value = _roads;
    if (value == null) return null;
    if (_roads is EqualUnmodifiableListView) return _roads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _guides;
  @override
  List<dynamic>? get guides {
    final value = _guides;
    if (value == null) return null;
    if (_guides is EqualUnmodifiableListView) return _guides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Sections(distance: $distance, duration: $duration, bound: $bound, roads: $roads, guides: $guides)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            const DeepCollectionEquality().equals(other._roads, _roads) &&
            const DeepCollectionEquality().equals(other._guides, _guides));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      duration,
      bound,
      const DeepCollectionEquality().hash(_roads),
      const DeepCollectionEquality().hash(_guides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsImplCopyWith<_$SectionsImpl> get copyWith =>
      __$$SectionsImplCopyWithImpl<_$SectionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionsImplToJson(
      this,
    );
  }
}

abstract class _Sections implements Sections {
  const factory _Sections(
      {required final int distance,
      required final int duration,
      final Bound? bound,
      final List<MobilityDirectionsDto>? roads,
      required final List<dynamic>? guides}) = _$SectionsImpl;

  factory _Sections.fromJson(Map<String, dynamic> json) =
      _$SectionsImpl.fromJson;

  @override
  int get distance;
  @override
  int get duration;
  @override
  Bound? get bound;
  @override
  List<MobilityDirectionsDto>? get roads;
  @override
  List<dynamic>? get guides;
  @override
  @JsonKey(ignore: true)
  _$$SectionsImplCopyWith<_$SectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
