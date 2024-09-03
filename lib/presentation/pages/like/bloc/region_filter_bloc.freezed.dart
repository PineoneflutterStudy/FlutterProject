// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegionFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        major,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        middle,
    required TResult Function(String result) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult? Function(String result)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Finish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionFilterEventCopyWith<$Res> {
  factory $RegionFilterEventCopyWith(
          RegionFilterEvent value, $Res Function(RegionFilterEvent) then) =
      _$RegionFilterEventCopyWithImpl<$Res, RegionFilterEvent>;
}

/// @nodoc
class _$RegionFilterEventCopyWithImpl<$Res, $Val extends RegionFilterEvent>
    implements $RegionFilterEventCopyWith<$Res> {
  _$RegionFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RegionFilterEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'RegionFilterEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        major,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        middle,
    required TResult Function(String result) finish,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult? Function(String result)? finish,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Finish value) finish,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Finish value)? finish,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RegionFilterEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MajorImplCopyWith<$Res> {
  factory _$$MajorImplCopyWith(
          _$MajorImpl value, $Res Function(_$MajorImpl) then) =
      __$$MajorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RegionModel> address, String cd, String current, String inputType});
}

/// @nodoc
class __$$MajorImplCopyWithImpl<$Res>
    extends _$RegionFilterEventCopyWithImpl<$Res, _$MajorImpl>
    implements _$$MajorImplCopyWith<$Res> {
  __$$MajorImplCopyWithImpl(
      _$MajorImpl _value, $Res Function(_$MajorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? cd = null,
    Object? current = null,
    Object? inputType = null,
  }) {
    return _then(_$MajorImpl(
      null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
      null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String,
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      null == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MajorImpl implements _Major {
  const _$MajorImpl(
      final List<RegionModel> address, this.cd, this.current, this.inputType)
      : _address = address;

  final List<RegionModel> _address;
  @override
  List<RegionModel> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  final String cd;
  @override
  final String current;
  @override
  final String inputType;

  @override
  String toString() {
    return 'RegionFilterEvent.major(address: $address, cd: $cd, current: $current, inputType: $inputType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MajorImpl &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.cd, cd) || other.cd == cd) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_address), cd, current, inputType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MajorImplCopyWith<_$MajorImpl> get copyWith =>
      __$$MajorImplCopyWithImpl<_$MajorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        major,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        middle,
    required TResult Function(String result) finish,
  }) {
    return major(address, cd, current, inputType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult? Function(String result)? finish,
  }) {
    return major?.call(address, cd, current, inputType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (major != null) {
      return major(address, cd, current, inputType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Finish value) finish,
  }) {
    return major(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Finish value)? finish,
  }) {
    return major?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (major != null) {
      return major(this);
    }
    return orElse();
  }
}

abstract class _Major implements RegionFilterEvent {
  const factory _Major(final List<RegionModel> address, final String cd,
      final String current, final String inputType) = _$MajorImpl;

  List<RegionModel> get address;
  String get cd;
  String get current;
  String get inputType;
  @JsonKey(ignore: true)
  _$$MajorImplCopyWith<_$MajorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MiddleImplCopyWith<$Res> {
  factory _$$MiddleImplCopyWith(
          _$MiddleImpl value, $Res Function(_$MiddleImpl) then) =
      __$$MiddleImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RegionModel> address, String cd, String current, String inputType});
}

/// @nodoc
class __$$MiddleImplCopyWithImpl<$Res>
    extends _$RegionFilterEventCopyWithImpl<$Res, _$MiddleImpl>
    implements _$$MiddleImplCopyWith<$Res> {
  __$$MiddleImplCopyWithImpl(
      _$MiddleImpl _value, $Res Function(_$MiddleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? cd = null,
    Object? current = null,
    Object? inputType = null,
  }) {
    return _then(_$MiddleImpl(
      null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
      null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String,
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      null == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MiddleImpl implements _Middle {
  const _$MiddleImpl(
      final List<RegionModel> address, this.cd, this.current, this.inputType)
      : _address = address;

  final List<RegionModel> _address;
  @override
  List<RegionModel> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  final String cd;
  @override
  final String current;
  @override
  final String inputType;

  @override
  String toString() {
    return 'RegionFilterEvent.middle(address: $address, cd: $cd, current: $current, inputType: $inputType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiddleImpl &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.cd, cd) || other.cd == cd) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_address), cd, current, inputType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiddleImplCopyWith<_$MiddleImpl> get copyWith =>
      __$$MiddleImplCopyWithImpl<_$MiddleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        major,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        middle,
    required TResult Function(String result) finish,
  }) {
    return middle(address, cd, current, inputType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult? Function(String result)? finish,
  }) {
    return middle?.call(address, cd, current, inputType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (middle != null) {
      return middle(address, cd, current, inputType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Finish value) finish,
  }) {
    return middle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Finish value)? finish,
  }) {
    return middle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (middle != null) {
      return middle(this);
    }
    return orElse();
  }
}

abstract class _Middle implements RegionFilterEvent {
  const factory _Middle(final List<RegionModel> address, final String cd,
      final String current, final String inputType) = _$MiddleImpl;

  List<RegionModel> get address;
  String get cd;
  String get current;
  String get inputType;
  @JsonKey(ignore: true)
  _$$MiddleImplCopyWith<_$MiddleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishImplCopyWith<$Res> {
  factory _$$FinishImplCopyWith(
          _$FinishImpl value, $Res Function(_$FinishImpl) then) =
      __$$FinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$FinishImplCopyWithImpl<$Res>
    extends _$RegionFilterEventCopyWithImpl<$Res, _$FinishImpl>
    implements _$$FinishImplCopyWith<$Res> {
  __$$FinishImplCopyWithImpl(
      _$FinishImpl _value, $Res Function(_$FinishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$FinishImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinishImpl implements _Finish {
  const _$FinishImpl(this.result);

  @override
  final String result;

  @override
  String toString() {
    return 'RegionFilterEvent.finish(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishImplCopyWith<_$FinishImpl> get copyWith =>
      __$$FinishImplCopyWithImpl<_$FinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        major,
    required TResult Function(List<RegionModel> address, String cd,
            String current, String inputType)
        middle,
    required TResult Function(String result) finish,
  }) {
    return finish(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult? Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult? Function(String result)? finish,
  }) {
    return finish?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        major,
    TResult Function(List<RegionModel> address, String cd, String current,
            String inputType)?
        middle,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Finish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish implements RegionFilterEvent {
  const factory _Finish(final String result) = _$FinishImpl;

  String get result;
  @JsonKey(ignore: true)
  _$$FinishImplCopyWith<_$FinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegionFilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RegionListModel model) showMajor,
    required TResult Function(RegionListModel model, String currentRegion)
        showMiddle,
    required TResult Function(RegionListModel model, String currentRegion)
        showMinor,
    required TResult Function(String result) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RegionListModel model)? showMajor,
    TResult? Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult? Function(RegionListModel model, String currentRegion)? showMinor,
    TResult? Function(String result)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RegionListModel model)? showMajor,
    TResult Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult Function(RegionListModel model, String currentRegion)? showMinor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowMajor value) showMajor,
    required TResult Function(_ShowMiddle value) showMiddle,
    required TResult Function(_ShowMinor value) showMinor,
    required TResult Function(_onFinish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowMajor value)? showMajor,
    TResult? Function(_ShowMiddle value)? showMiddle,
    TResult? Function(_ShowMinor value)? showMinor,
    TResult? Function(_onFinish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowMajor value)? showMajor,
    TResult Function(_ShowMiddle value)? showMiddle,
    TResult Function(_ShowMinor value)? showMinor,
    TResult Function(_onFinish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionFilterStateCopyWith<$Res> {
  factory $RegionFilterStateCopyWith(
          RegionFilterState value, $Res Function(RegionFilterState) then) =
      _$RegionFilterStateCopyWithImpl<$Res, RegionFilterState>;
}

/// @nodoc
class _$RegionFilterStateCopyWithImpl<$Res, $Val extends RegionFilterState>
    implements $RegionFilterStateCopyWith<$Res> {
  _$RegionFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegionFilterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegionFilterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RegionListModel model) showMajor,
    required TResult Function(RegionListModel model, String currentRegion)
        showMiddle,
    required TResult Function(RegionListModel model, String currentRegion)
        showMinor,
    required TResult Function(String result) finish,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RegionListModel model)? showMajor,
    TResult? Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult? Function(RegionListModel model, String currentRegion)? showMinor,
    TResult? Function(String result)? finish,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RegionListModel model)? showMajor,
    TResult Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult Function(RegionListModel model, String currentRegion)? showMinor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowMajor value) showMajor,
    required TResult Function(_ShowMiddle value) showMiddle,
    required TResult Function(_ShowMinor value) showMinor,
    required TResult Function(_onFinish value) finish,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowMajor value)? showMajor,
    TResult? Function(_ShowMiddle value)? showMiddle,
    TResult? Function(_ShowMinor value)? showMinor,
    TResult? Function(_onFinish value)? finish,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowMajor value)? showMajor,
    TResult Function(_ShowMiddle value)? showMiddle,
    TResult Function(_ShowMinor value)? showMinor,
    TResult Function(_onFinish value)? finish,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegionFilterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ShowMajorImplCopyWith<$Res> {
  factory _$$ShowMajorImplCopyWith(
          _$ShowMajorImpl value, $Res Function(_$ShowMajorImpl) then) =
      __$$ShowMajorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegionListModel model});

  $RegionListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ShowMajorImplCopyWithImpl<$Res>
    extends _$RegionFilterStateCopyWithImpl<$Res, _$ShowMajorImpl>
    implements _$$ShowMajorImplCopyWith<$Res> {
  __$$ShowMajorImplCopyWithImpl(
      _$ShowMajorImpl _value, $Res Function(_$ShowMajorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ShowMajorImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegionListModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionListModelCopyWith<$Res> get model {
    return $RegionListModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ShowMajorImpl implements _ShowMajor {
  const _$ShowMajorImpl(this.model);

  @override
  final RegionListModel model;

  @override
  String toString() {
    return 'RegionFilterState.showMajor(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMajorImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMajorImplCopyWith<_$ShowMajorImpl> get copyWith =>
      __$$ShowMajorImplCopyWithImpl<_$ShowMajorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RegionListModel model) showMajor,
    required TResult Function(RegionListModel model, String currentRegion)
        showMiddle,
    required TResult Function(RegionListModel model, String currentRegion)
        showMinor,
    required TResult Function(String result) finish,
  }) {
    return showMajor(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RegionListModel model)? showMajor,
    TResult? Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult? Function(RegionListModel model, String currentRegion)? showMinor,
    TResult? Function(String result)? finish,
  }) {
    return showMajor?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RegionListModel model)? showMajor,
    TResult Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult Function(RegionListModel model, String currentRegion)? showMinor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (showMajor != null) {
      return showMajor(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowMajor value) showMajor,
    required TResult Function(_ShowMiddle value) showMiddle,
    required TResult Function(_ShowMinor value) showMinor,
    required TResult Function(_onFinish value) finish,
  }) {
    return showMajor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowMajor value)? showMajor,
    TResult? Function(_ShowMiddle value)? showMiddle,
    TResult? Function(_ShowMinor value)? showMinor,
    TResult? Function(_onFinish value)? finish,
  }) {
    return showMajor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowMajor value)? showMajor,
    TResult Function(_ShowMiddle value)? showMiddle,
    TResult Function(_ShowMinor value)? showMinor,
    TResult Function(_onFinish value)? finish,
    required TResult orElse(),
  }) {
    if (showMajor != null) {
      return showMajor(this);
    }
    return orElse();
  }
}

abstract class _ShowMajor implements RegionFilterState {
  const factory _ShowMajor(final RegionListModel model) = _$ShowMajorImpl;

  RegionListModel get model;
  @JsonKey(ignore: true)
  _$$ShowMajorImplCopyWith<_$ShowMajorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowMiddleImplCopyWith<$Res> {
  factory _$$ShowMiddleImplCopyWith(
          _$ShowMiddleImpl value, $Res Function(_$ShowMiddleImpl) then) =
      __$$ShowMiddleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegionListModel model, String currentRegion});

  $RegionListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ShowMiddleImplCopyWithImpl<$Res>
    extends _$RegionFilterStateCopyWithImpl<$Res, _$ShowMiddleImpl>
    implements _$$ShowMiddleImplCopyWith<$Res> {
  __$$ShowMiddleImplCopyWithImpl(
      _$ShowMiddleImpl _value, $Res Function(_$ShowMiddleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? currentRegion = null,
  }) {
    return _then(_$ShowMiddleImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegionListModel,
      null == currentRegion
          ? _value.currentRegion
          : currentRegion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionListModelCopyWith<$Res> get model {
    return $RegionListModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ShowMiddleImpl implements _ShowMiddle {
  const _$ShowMiddleImpl(this.model, this.currentRegion);

  @override
  final RegionListModel model;
  @override
  final String currentRegion;

  @override
  String toString() {
    return 'RegionFilterState.showMiddle(model: $model, currentRegion: $currentRegion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMiddleImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.currentRegion, currentRegion) ||
                other.currentRegion == currentRegion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, currentRegion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMiddleImplCopyWith<_$ShowMiddleImpl> get copyWith =>
      __$$ShowMiddleImplCopyWithImpl<_$ShowMiddleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RegionListModel model) showMajor,
    required TResult Function(RegionListModel model, String currentRegion)
        showMiddle,
    required TResult Function(RegionListModel model, String currentRegion)
        showMinor,
    required TResult Function(String result) finish,
  }) {
    return showMiddle(model, currentRegion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RegionListModel model)? showMajor,
    TResult? Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult? Function(RegionListModel model, String currentRegion)? showMinor,
    TResult? Function(String result)? finish,
  }) {
    return showMiddle?.call(model, currentRegion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RegionListModel model)? showMajor,
    TResult Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult Function(RegionListModel model, String currentRegion)? showMinor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (showMiddle != null) {
      return showMiddle(model, currentRegion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowMajor value) showMajor,
    required TResult Function(_ShowMiddle value) showMiddle,
    required TResult Function(_ShowMinor value) showMinor,
    required TResult Function(_onFinish value) finish,
  }) {
    return showMiddle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowMajor value)? showMajor,
    TResult? Function(_ShowMiddle value)? showMiddle,
    TResult? Function(_ShowMinor value)? showMinor,
    TResult? Function(_onFinish value)? finish,
  }) {
    return showMiddle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowMajor value)? showMajor,
    TResult Function(_ShowMiddle value)? showMiddle,
    TResult Function(_ShowMinor value)? showMinor,
    TResult Function(_onFinish value)? finish,
    required TResult orElse(),
  }) {
    if (showMiddle != null) {
      return showMiddle(this);
    }
    return orElse();
  }
}

abstract class _ShowMiddle implements RegionFilterState {
  const factory _ShowMiddle(
          final RegionListModel model, final String currentRegion) =
      _$ShowMiddleImpl;

  RegionListModel get model;
  String get currentRegion;
  @JsonKey(ignore: true)
  _$$ShowMiddleImplCopyWith<_$ShowMiddleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowMinorImplCopyWith<$Res> {
  factory _$$ShowMinorImplCopyWith(
          _$ShowMinorImpl value, $Res Function(_$ShowMinorImpl) then) =
      __$$ShowMinorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegionListModel model, String currentRegion});

  $RegionListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ShowMinorImplCopyWithImpl<$Res>
    extends _$RegionFilterStateCopyWithImpl<$Res, _$ShowMinorImpl>
    implements _$$ShowMinorImplCopyWith<$Res> {
  __$$ShowMinorImplCopyWithImpl(
      _$ShowMinorImpl _value, $Res Function(_$ShowMinorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? currentRegion = null,
  }) {
    return _then(_$ShowMinorImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegionListModel,
      null == currentRegion
          ? _value.currentRegion
          : currentRegion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionListModelCopyWith<$Res> get model {
    return $RegionListModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ShowMinorImpl implements _ShowMinor {
  const _$ShowMinorImpl(this.model, this.currentRegion);

  @override
  final RegionListModel model;
  @override
  final String currentRegion;

  @override
  String toString() {
    return 'RegionFilterState.showMinor(model: $model, currentRegion: $currentRegion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMinorImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.currentRegion, currentRegion) ||
                other.currentRegion == currentRegion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, currentRegion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMinorImplCopyWith<_$ShowMinorImpl> get copyWith =>
      __$$ShowMinorImplCopyWithImpl<_$ShowMinorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RegionListModel model) showMajor,
    required TResult Function(RegionListModel model, String currentRegion)
        showMiddle,
    required TResult Function(RegionListModel model, String currentRegion)
        showMinor,
    required TResult Function(String result) finish,
  }) {
    return showMinor(model, currentRegion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RegionListModel model)? showMajor,
    TResult? Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult? Function(RegionListModel model, String currentRegion)? showMinor,
    TResult? Function(String result)? finish,
  }) {
    return showMinor?.call(model, currentRegion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RegionListModel model)? showMajor,
    TResult Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult Function(RegionListModel model, String currentRegion)? showMinor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (showMinor != null) {
      return showMinor(model, currentRegion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowMajor value) showMajor,
    required TResult Function(_ShowMiddle value) showMiddle,
    required TResult Function(_ShowMinor value) showMinor,
    required TResult Function(_onFinish value) finish,
  }) {
    return showMinor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowMajor value)? showMajor,
    TResult? Function(_ShowMiddle value)? showMiddle,
    TResult? Function(_ShowMinor value)? showMinor,
    TResult? Function(_onFinish value)? finish,
  }) {
    return showMinor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowMajor value)? showMajor,
    TResult Function(_ShowMiddle value)? showMiddle,
    TResult Function(_ShowMinor value)? showMinor,
    TResult Function(_onFinish value)? finish,
    required TResult orElse(),
  }) {
    if (showMinor != null) {
      return showMinor(this);
    }
    return orElse();
  }
}

abstract class _ShowMinor implements RegionFilterState {
  const factory _ShowMinor(
          final RegionListModel model, final String currentRegion) =
      _$ShowMinorImpl;

  RegionListModel get model;
  String get currentRegion;
  @JsonKey(ignore: true)
  _$$ShowMinorImplCopyWith<_$ShowMinorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onFinishImplCopyWith<$Res> {
  factory _$$onFinishImplCopyWith(
          _$onFinishImpl value, $Res Function(_$onFinishImpl) then) =
      __$$onFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$onFinishImplCopyWithImpl<$Res>
    extends _$RegionFilterStateCopyWithImpl<$Res, _$onFinishImpl>
    implements _$$onFinishImplCopyWith<$Res> {
  __$$onFinishImplCopyWithImpl(
      _$onFinishImpl _value, $Res Function(_$onFinishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$onFinishImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onFinishImpl implements _onFinish {
  const _$onFinishImpl(this.result);

  @override
  final String result;

  @override
  String toString() {
    return 'RegionFilterState.finish(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onFinishImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onFinishImplCopyWith<_$onFinishImpl> get copyWith =>
      __$$onFinishImplCopyWithImpl<_$onFinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RegionListModel model) showMajor,
    required TResult Function(RegionListModel model, String currentRegion)
        showMiddle,
    required TResult Function(RegionListModel model, String currentRegion)
        showMinor,
    required TResult Function(String result) finish,
  }) {
    return finish(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RegionListModel model)? showMajor,
    TResult? Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult? Function(RegionListModel model, String currentRegion)? showMinor,
    TResult? Function(String result)? finish,
  }) {
    return finish?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RegionListModel model)? showMajor,
    TResult Function(RegionListModel model, String currentRegion)? showMiddle,
    TResult Function(RegionListModel model, String currentRegion)? showMinor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowMajor value) showMajor,
    required TResult Function(_ShowMiddle value) showMiddle,
    required TResult Function(_ShowMinor value) showMinor,
    required TResult Function(_onFinish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ShowMajor value)? showMajor,
    TResult? Function(_ShowMiddle value)? showMiddle,
    TResult? Function(_ShowMinor value)? showMinor,
    TResult? Function(_onFinish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowMajor value)? showMajor,
    TResult Function(_ShowMiddle value)? showMiddle,
    TResult Function(_ShowMinor value)? showMinor,
    TResult Function(_onFinish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _onFinish implements RegionFilterState {
  const factory _onFinish(final String result) = _$onFinishImpl;

  String get result;
  @JsonKey(ignore: true)
  _$$onFinishImplCopyWith<_$onFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
