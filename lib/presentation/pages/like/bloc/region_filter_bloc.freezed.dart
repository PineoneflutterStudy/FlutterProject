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
    required TResult Function(String cd, RegionSelectModel selectAddr) major,
    required TResult Function(String cd, RegionSelectModel selectAddr) middle,
    required TResult Function(RegionSelectModel selectAddr) minor,
    required TResult Function(String result) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cd, RegionSelectModel selectAddr)? major,
    TResult? Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult? Function(RegionSelectModel selectAddr)? minor,
    TResult? Function(String result)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cd, RegionSelectModel selectAddr)? major,
    TResult Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult Function(RegionSelectModel selectAddr)? minor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Minor value) minor,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Minor value)? minor,
    TResult? Function(_Finish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Minor value)? minor,
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
    required TResult Function(String cd, RegionSelectModel selectAddr) major,
    required TResult Function(String cd, RegionSelectModel selectAddr) middle,
    required TResult Function(RegionSelectModel selectAddr) minor,
    required TResult Function(String result) finish,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cd, RegionSelectModel selectAddr)? major,
    TResult? Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult? Function(RegionSelectModel selectAddr)? minor,
    TResult? Function(String result)? finish,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cd, RegionSelectModel selectAddr)? major,
    TResult Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult Function(RegionSelectModel selectAddr)? minor,
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
    required TResult Function(_Minor value) minor,
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
    TResult? Function(_Minor value)? minor,
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
    TResult Function(_Minor value)? minor,
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
  $Res call({String cd, RegionSelectModel selectAddr});

  $RegionSelectModelCopyWith<$Res> get selectAddr;
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
    Object? cd = null,
    Object? selectAddr = null,
  }) {
    return _then(_$MajorImpl(
      null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectAddr
          ? _value.selectAddr
          : selectAddr // ignore: cast_nullable_to_non_nullable
              as RegionSelectModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionSelectModelCopyWith<$Res> get selectAddr {
    return $RegionSelectModelCopyWith<$Res>(_value.selectAddr, (value) {
      return _then(_value.copyWith(selectAddr: value));
    });
  }
}

/// @nodoc

class _$MajorImpl implements _Major {
  const _$MajorImpl(this.cd, this.selectAddr);

  @override
  final String cd;
  @override
  final RegionSelectModel selectAddr;

  @override
  String toString() {
    return 'RegionFilterEvent.major(cd: $cd, selectAddr: $selectAddr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MajorImpl &&
            (identical(other.cd, cd) || other.cd == cd) &&
            (identical(other.selectAddr, selectAddr) ||
                other.selectAddr == selectAddr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cd, selectAddr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MajorImplCopyWith<_$MajorImpl> get copyWith =>
      __$$MajorImplCopyWithImpl<_$MajorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cd, RegionSelectModel selectAddr) major,
    required TResult Function(String cd, RegionSelectModel selectAddr) middle,
    required TResult Function(RegionSelectModel selectAddr) minor,
    required TResult Function(String result) finish,
  }) {
    return major(cd, selectAddr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cd, RegionSelectModel selectAddr)? major,
    TResult? Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult? Function(RegionSelectModel selectAddr)? minor,
    TResult? Function(String result)? finish,
  }) {
    return major?.call(cd, selectAddr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cd, RegionSelectModel selectAddr)? major,
    TResult Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult Function(RegionSelectModel selectAddr)? minor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (major != null) {
      return major(cd, selectAddr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Minor value) minor,
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
    TResult? Function(_Minor value)? minor,
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
    TResult Function(_Minor value)? minor,
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
  const factory _Major(final String cd, final RegionSelectModel selectAddr) =
      _$MajorImpl;

  String get cd;
  RegionSelectModel get selectAddr;
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
  $Res call({String cd, RegionSelectModel selectAddr});

  $RegionSelectModelCopyWith<$Res> get selectAddr;
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
    Object? cd = null,
    Object? selectAddr = null,
  }) {
    return _then(_$MiddleImpl(
      null == cd
          ? _value.cd
          : cd // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectAddr
          ? _value.selectAddr
          : selectAddr // ignore: cast_nullable_to_non_nullable
              as RegionSelectModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionSelectModelCopyWith<$Res> get selectAddr {
    return $RegionSelectModelCopyWith<$Res>(_value.selectAddr, (value) {
      return _then(_value.copyWith(selectAddr: value));
    });
  }
}

/// @nodoc

class _$MiddleImpl implements _Middle {
  const _$MiddleImpl(this.cd, this.selectAddr);

  @override
  final String cd;
  @override
  final RegionSelectModel selectAddr;

  @override
  String toString() {
    return 'RegionFilterEvent.middle(cd: $cd, selectAddr: $selectAddr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiddleImpl &&
            (identical(other.cd, cd) || other.cd == cd) &&
            (identical(other.selectAddr, selectAddr) ||
                other.selectAddr == selectAddr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cd, selectAddr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiddleImplCopyWith<_$MiddleImpl> get copyWith =>
      __$$MiddleImplCopyWithImpl<_$MiddleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cd, RegionSelectModel selectAddr) major,
    required TResult Function(String cd, RegionSelectModel selectAddr) middle,
    required TResult Function(RegionSelectModel selectAddr) minor,
    required TResult Function(String result) finish,
  }) {
    return middle(cd, selectAddr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cd, RegionSelectModel selectAddr)? major,
    TResult? Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult? Function(RegionSelectModel selectAddr)? minor,
    TResult? Function(String result)? finish,
  }) {
    return middle?.call(cd, selectAddr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cd, RegionSelectModel selectAddr)? major,
    TResult Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult Function(RegionSelectModel selectAddr)? minor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (middle != null) {
      return middle(cd, selectAddr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Minor value) minor,
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
    TResult? Function(_Minor value)? minor,
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
    TResult Function(_Minor value)? minor,
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
  const factory _Middle(final String cd, final RegionSelectModel selectAddr) =
      _$MiddleImpl;

  String get cd;
  RegionSelectModel get selectAddr;
  @JsonKey(ignore: true)
  _$$MiddleImplCopyWith<_$MiddleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinorImplCopyWith<$Res> {
  factory _$$MinorImplCopyWith(
          _$MinorImpl value, $Res Function(_$MinorImpl) then) =
      __$$MinorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegionSelectModel selectAddr});

  $RegionSelectModelCopyWith<$Res> get selectAddr;
}

/// @nodoc
class __$$MinorImplCopyWithImpl<$Res>
    extends _$RegionFilterEventCopyWithImpl<$Res, _$MinorImpl>
    implements _$$MinorImplCopyWith<$Res> {
  __$$MinorImplCopyWithImpl(
      _$MinorImpl _value, $Res Function(_$MinorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectAddr = null,
  }) {
    return _then(_$MinorImpl(
      null == selectAddr
          ? _value.selectAddr
          : selectAddr // ignore: cast_nullable_to_non_nullable
              as RegionSelectModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionSelectModelCopyWith<$Res> get selectAddr {
    return $RegionSelectModelCopyWith<$Res>(_value.selectAddr, (value) {
      return _then(_value.copyWith(selectAddr: value));
    });
  }
}

/// @nodoc

class _$MinorImpl implements _Minor {
  const _$MinorImpl(this.selectAddr);

  @override
  final RegionSelectModel selectAddr;

  @override
  String toString() {
    return 'RegionFilterEvent.minor(selectAddr: $selectAddr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinorImpl &&
            (identical(other.selectAddr, selectAddr) ||
                other.selectAddr == selectAddr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectAddr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinorImplCopyWith<_$MinorImpl> get copyWith =>
      __$$MinorImplCopyWithImpl<_$MinorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cd, RegionSelectModel selectAddr) major,
    required TResult Function(String cd, RegionSelectModel selectAddr) middle,
    required TResult Function(RegionSelectModel selectAddr) minor,
    required TResult Function(String result) finish,
  }) {
    return minor(selectAddr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cd, RegionSelectModel selectAddr)? major,
    TResult? Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult? Function(RegionSelectModel selectAddr)? minor,
    TResult? Function(String result)? finish,
  }) {
    return minor?.call(selectAddr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cd, RegionSelectModel selectAddr)? major,
    TResult Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult Function(RegionSelectModel selectAddr)? minor,
    TResult Function(String result)? finish,
    required TResult orElse(),
  }) {
    if (minor != null) {
      return minor(selectAddr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Major value) major,
    required TResult Function(_Middle value) middle,
    required TResult Function(_Minor value) minor,
    required TResult Function(_Finish value) finish,
  }) {
    return minor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Major value)? major,
    TResult? Function(_Middle value)? middle,
    TResult? Function(_Minor value)? minor,
    TResult? Function(_Finish value)? finish,
  }) {
    return minor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Major value)? major,
    TResult Function(_Middle value)? middle,
    TResult Function(_Minor value)? minor,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (minor != null) {
      return minor(this);
    }
    return orElse();
  }
}

abstract class _Minor implements RegionFilterEvent {
  const factory _Minor(final RegionSelectModel selectAddr) = _$MinorImpl;

  RegionSelectModel get selectAddr;
  @JsonKey(ignore: true)
  _$$MinorImplCopyWith<_$MinorImpl> get copyWith =>
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
    required TResult Function(String cd, RegionSelectModel selectAddr) major,
    required TResult Function(String cd, RegionSelectModel selectAddr) middle,
    required TResult Function(RegionSelectModel selectAddr) minor,
    required TResult Function(String result) finish,
  }) {
    return finish(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cd, RegionSelectModel selectAddr)? major,
    TResult? Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult? Function(RegionSelectModel selectAddr)? minor,
    TResult? Function(String result)? finish,
  }) {
    return finish?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cd, RegionSelectModel selectAddr)? major,
    TResult Function(String cd, RegionSelectModel selectAddr)? middle,
    TResult Function(RegionSelectModel selectAddr)? minor,
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
    required TResult Function(_Minor value) minor,
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
    TResult? Function(_Minor value)? minor,
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
    TResult Function(_Minor value)? minor,
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
  RegionStatus get status => throw _privateConstructorUsedError;
  RegionListModel get model => throw _privateConstructorUsedError;
  RegionSelectModel get select => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegionFilterStateCopyWith<RegionFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionFilterStateCopyWith<$Res> {
  factory $RegionFilterStateCopyWith(
          RegionFilterState value, $Res Function(RegionFilterState) then) =
      _$RegionFilterStateCopyWithImpl<$Res, RegionFilterState>;
  @useResult
  $Res call(
      {RegionStatus status, RegionListModel model, RegionSelectModel select});

  $RegionListModelCopyWith<$Res> get model;
  $RegionSelectModelCopyWith<$Res> get select;
}

/// @nodoc
class _$RegionFilterStateCopyWithImpl<$Res, $Val extends RegionFilterState>
    implements $RegionFilterStateCopyWith<$Res> {
  _$RegionFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? model = null,
    Object? select = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegionStatus,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegionListModel,
      select: null == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as RegionSelectModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionListModelCopyWith<$Res> get model {
    return $RegionListModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionSelectModelCopyWith<$Res> get select {
    return $RegionSelectModelCopyWith<$Res>(_value.select, (value) {
      return _then(_value.copyWith(select: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegionFilterStateImplCopyWith<$Res>
    implements $RegionFilterStateCopyWith<$Res> {
  factory _$$RegionFilterStateImplCopyWith(_$RegionFilterStateImpl value,
          $Res Function(_$RegionFilterStateImpl) then) =
      __$$RegionFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegionStatus status, RegionListModel model, RegionSelectModel select});

  @override
  $RegionListModelCopyWith<$Res> get model;
  @override
  $RegionSelectModelCopyWith<$Res> get select;
}

/// @nodoc
class __$$RegionFilterStateImplCopyWithImpl<$Res>
    extends _$RegionFilterStateCopyWithImpl<$Res, _$RegionFilterStateImpl>
    implements _$$RegionFilterStateImplCopyWith<$Res> {
  __$$RegionFilterStateImplCopyWithImpl(_$RegionFilterStateImpl _value,
      $Res Function(_$RegionFilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? model = null,
    Object? select = null,
  }) {
    return _then(_$RegionFilterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegionStatus,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegionListModel,
      select: null == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as RegionSelectModel,
    ));
  }
}

/// @nodoc

class _$RegionFilterStateImpl implements _RegionFilterState {
  const _$RegionFilterStateImpl(
      {this.status = RegionStatus.initial,
      this.model = const RegionListModel(addrList: []),
      this.select = const RegionSelectModel(
          major: '', middle: '', minor: '', current: 1)});

  @override
  @JsonKey()
  final RegionStatus status;
  @override
  @JsonKey()
  final RegionListModel model;
  @override
  @JsonKey()
  final RegionSelectModel select;

  @override
  String toString() {
    return 'RegionFilterState(status: $status, model: $model, select: $select)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionFilterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.select, select) || other.select == select));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, model, select);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionFilterStateImplCopyWith<_$RegionFilterStateImpl> get copyWith =>
      __$$RegionFilterStateImplCopyWithImpl<_$RegionFilterStateImpl>(
          this, _$identity);
}

abstract class _RegionFilterState implements RegionFilterState {
  const factory _RegionFilterState(
      {final RegionStatus status,
      final RegionListModel model,
      final RegionSelectModel select}) = _$RegionFilterStateImpl;

  @override
  RegionStatus get status;
  @override
  RegionListModel get model;
  @override
  RegionSelectModel get select;
  @override
  @JsonKey(ignore: true)
  _$$RegionFilterStateImplCopyWith<_$RegionFilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
