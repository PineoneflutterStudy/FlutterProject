// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginCheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckLoginState value) checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckLoginState value)? checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckLoginState value)? checkLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCheckEventCopyWith<$Res> {
  factory $LoginCheckEventCopyWith(
          LoginCheckEvent value, $Res Function(LoginCheckEvent) then) =
      _$LoginCheckEventCopyWithImpl<$Res, LoginCheckEvent>;
}

/// @nodoc
class _$LoginCheckEventCopyWithImpl<$Res, $Val extends LoginCheckEvent>
    implements $LoginCheckEventCopyWith<$Res> {
  _$LoginCheckEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckLoginStateImplCopyWith<$Res> {
  factory _$$CheckLoginStateImplCopyWith(_$CheckLoginStateImpl value,
          $Res Function(_$CheckLoginStateImpl) then) =
      __$$CheckLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoginStateImplCopyWithImpl<$Res>
    extends _$LoginCheckEventCopyWithImpl<$Res, _$CheckLoginStateImpl>
    implements _$$CheckLoginStateImplCopyWith<$Res> {
  __$$CheckLoginStateImplCopyWithImpl(
      _$CheckLoginStateImpl _value, $Res Function(_$CheckLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLoginStateImpl implements _CheckLoginState {
  const _$CheckLoginStateImpl();

  @override
  String toString() {
    return 'LoginCheckEvent.checkLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLogin,
  }) {
    return checkLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLogin,
  }) {
    return checkLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLogin,
    required TResult orElse(),
  }) {
    if (checkLogin != null) {
      return checkLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckLoginState value) checkLogin,
  }) {
    return checkLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckLoginState value)? checkLogin,
  }) {
    return checkLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckLoginState value)? checkLogin,
    required TResult orElse(),
  }) {
    if (checkLogin != null) {
      return checkLogin(this);
    }
    return orElse();
  }
}

abstract class _CheckLoginState implements LoginCheckEvent {
  const factory _CheckLoginState() = _$CheckLoginStateImpl;
}

/// @nodoc
mixin _$LoginCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_loggedIn value) loggedIn,
    required TResult Function(_loggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loggedIn value)? loggedIn,
    TResult? Function(_loggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loggedIn value)? loggedIn,
    TResult Function(_loggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCheckStateCopyWith<$Res> {
  factory $LoginCheckStateCopyWith(
          LoginCheckState value, $Res Function(LoginCheckState) then) =
      _$LoginCheckStateCopyWithImpl<$Res, LoginCheckState>;
}

/// @nodoc
class _$LoginCheckStateCopyWithImpl<$Res, $Val extends LoginCheckState>
    implements $LoginCheckStateCopyWith<$Res> {
  _$LoginCheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginCheckStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginCheckState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_loggedIn value) loggedIn,
    required TResult Function(_loggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loggedIn value)? loggedIn,
    TResult? Function(_loggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loggedIn value)? loggedIn,
    TResult Function(_loggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginCheckState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$loggedInImplCopyWith<$Res> {
  factory _$$loggedInImplCopyWith(
          _$loggedInImpl value, $Res Function(_$loggedInImpl) then) =
      __$$loggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loggedInImplCopyWithImpl<$Res>
    extends _$LoginCheckStateCopyWithImpl<$Res, _$loggedInImpl>
    implements _$$loggedInImplCopyWith<$Res> {
  __$$loggedInImplCopyWithImpl(
      _$loggedInImpl _value, $Res Function(_$loggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loggedInImpl implements _loggedIn {
  const _$loggedInImpl();

  @override
  String toString() {
    return 'LoginCheckState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() error,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? error,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_loggedIn value) loggedIn,
    required TResult Function(_loggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loggedIn value)? loggedIn,
    TResult? Function(_loggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loggedIn value)? loggedIn,
    TResult Function(_loggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _loggedIn implements LoginCheckState {
  const factory _loggedIn() = _$loggedInImpl;
}

/// @nodoc
abstract class _$$loggedOutImplCopyWith<$Res> {
  factory _$$loggedOutImplCopyWith(
          _$loggedOutImpl value, $Res Function(_$loggedOutImpl) then) =
      __$$loggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loggedOutImplCopyWithImpl<$Res>
    extends _$LoginCheckStateCopyWithImpl<$Res, _$loggedOutImpl>
    implements _$$loggedOutImplCopyWith<$Res> {
  __$$loggedOutImplCopyWithImpl(
      _$loggedOutImpl _value, $Res Function(_$loggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loggedOutImpl implements _loggedOut {
  const _$loggedOutImpl();

  @override
  String toString() {
    return 'LoginCheckState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() error,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? error,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_loggedIn value) loggedIn,
    required TResult Function(_loggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loggedIn value)? loggedIn,
    TResult? Function(_loggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loggedIn value)? loggedIn,
    TResult Function(_loggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _loggedOut implements LoginCheckState {
  const factory _loggedOut() = _$loggedOutImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoginCheckStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'LoginCheckState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_loggedIn value) loggedIn,
    required TResult Function(_loggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loggedIn value)? loggedIn,
    TResult? Function(_loggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loggedIn value)? loggedIn,
    TResult Function(_loggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginCheckState {
  const factory _Error() = _$ErrorImpl;
}
