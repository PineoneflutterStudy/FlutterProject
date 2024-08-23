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
  List<dynamic> get routes => throw _privateConstructorUsedError;

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
  $Res call({String trans_id, List<dynamic> routes});
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
    Object? routes = null,
  }) {
    return _then(_value.copyWith(
      trans_id: null == trans_id
          ? _value.trans_id
          : trans_id // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
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
  $Res call({String trans_id, List<dynamic> routes});
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
    Object? routes = null,
  }) {
    return _then(_$KakaoMobilityResponseWrapperImpl<T>(
      trans_id: null == trans_id
          ? _value.trans_id
          : trans_id // ignore: cast_nullable_to_non_nullable
              as String,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KakaoMobilityResponseWrapperImpl<T>
    implements _KakaoMobilityResponseWrapper<T> {
  const _$KakaoMobilityResponseWrapperImpl(
      {required this.trans_id, required final List<dynamic> routes})
      : _routes = routes;

  factory _$KakaoMobilityResponseWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KakaoMobilityResponseWrapperImplFromJson(json);

  @override
  final String trans_id;
  final List<dynamic> _routes;
  @override
  List<dynamic> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

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
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, trans_id, const DeepCollectionEquality().hash(_routes));

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
          required final List<dynamic> routes}) =
      _$KakaoMobilityResponseWrapperImpl<T>;

  factory _KakaoMobilityResponseWrapper.fromJson(Map<String, dynamic> json) =
      _$KakaoMobilityResponseWrapperImpl<T>.fromJson;

  @override
  String get trans_id;
  @override
  List<dynamic> get routes;
  @override
  @JsonKey(ignore: true)
  _$$KakaoMobilityResponseWrapperImplCopyWith<T,
          _$KakaoMobilityResponseWrapperImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
