// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceState {
  Status get status => throw _privateConstructorUsedError;
  List<Place> get places => throw _privateConstructorUsedError;
  ErrorResponse? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceStateCopyWith<PlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
  @useResult
  $Res call({Status status, List<Place> places, ErrorResponse? error});
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? places = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceStateImplCopyWith<$Res>
    implements $PlaceStateCopyWith<$Res> {
  factory _$$PlaceStateImplCopyWith(
          _$PlaceStateImpl value, $Res Function(_$PlaceStateImpl) then) =
      __$$PlaceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Place> places, ErrorResponse? error});
}

/// @nodoc
class __$$PlaceStateImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceStateImpl>
    implements _$$PlaceStateImplCopyWith<$Res> {
  __$$PlaceStateImplCopyWithImpl(
      _$PlaceStateImpl _value, $Res Function(_$PlaceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? places = null,
    Object? error = freezed,
  }) {
    return _then(_$PlaceStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ));
  }
}

/// @nodoc

class _$PlaceStateImpl implements _PlaceState {
  _$PlaceStateImpl(
      {this.status = Status.initial,
      final List<Place> places = const <Place>[],
      this.error})
      : _places = places;

  @override
  @JsonKey()
  final Status status;
  final List<Place> _places;
  @override
  @JsonKey()
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  final ErrorResponse? error;

  @override
  String toString() {
    return 'PlaceState(status: $status, places: $places, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_places), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceStateImplCopyWith<_$PlaceStateImpl> get copyWith =>
      __$$PlaceStateImplCopyWithImpl<_$PlaceStateImpl>(this, _$identity);
}

abstract class _PlaceState implements PlaceState {
  factory _PlaceState(
      {final Status status,
      final List<Place> places,
      final ErrorResponse? error}) = _$PlaceStateImpl;

  @override
  Status get status;
  @override
  List<Place> get places;
  @override
  ErrorResponse? get error;
  @override
  @JsonKey(ignore: true)
  _$$PlaceStateImplCopyWith<_$PlaceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
