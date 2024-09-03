// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailEventCopyWith<$Res> {
  factory $EmailEventCopyWith(
          EmailEvent value, $Res Function(EmailEvent) then) =
      _$EmailEventCopyWithImpl<$Res, EmailEvent>;
}

/// @nodoc
class _$EmailEventCopyWithImpl<$Res, $Val extends EmailEvent>
    implements $EmailEventCopyWith<$Res> {
  _$EmailEventCopyWithImpl(this._value, this._then);

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
    extends _$EmailEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'EmailEvent.started()';
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
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginButtonPressed,
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
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EmailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(_$LoginButtonPressedImpl value,
          $Res Function(_$LoginButtonPressedImpl) then) =
      __$$LoginButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$EmailEventCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(_$LoginButtonPressedImpl _value,
      $Res Function(_$LoginButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginButtonPressedImpl implements _LoginButtonPressed {
  const _$LoginButtonPressedImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'EmailEvent.loginButtonPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      __$$LoginButtonPressedImplCopyWithImpl<_$LoginButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return loginButtonPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginButtonPressed implements EmailEvent {
  const factory _LoginButtonPressed(final String email, final String password) =
      _$LoginButtonPressedImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res, EmailState>;
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res, $Val extends EmailState>
    implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

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
    extends _$EmailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EmailState.initial()';
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
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
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
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ValidationFailedImplCopyWith<$Res> {
  factory _$$ValidationFailedImplCopyWith(_$ValidationFailedImpl value,
          $Res Function(_$ValidationFailedImpl) then) =
      __$$ValidationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty});
}

/// @nodoc
class __$$ValidationFailedImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$ValidationFailedImpl>
    implements _$$ValidationFailedImplCopyWith<$Res> {
  __$$ValidationFailedImplCopyWithImpl(_$ValidationFailedImpl _value,
      $Res Function(_$ValidationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailEmpty = null,
    Object? isEmailInvalid = null,
    Object? isPasswordEmpty = null,
  }) {
    return _then(_$ValidationFailedImpl(
      null == isEmailEmpty
          ? _value.isEmailEmpty
          : isEmailEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isEmailInvalid
          ? _value.isEmailInvalid
          : isEmailInvalid // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isPasswordEmpty
          ? _value.isPasswordEmpty
          : isPasswordEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ValidationFailedImpl implements _ValidationFailed {
  const _$ValidationFailedImpl(
      this.isEmailEmpty, this.isEmailInvalid, this.isPasswordEmpty);

  @override
  final bool isEmailEmpty;
  @override
  final bool isEmailInvalid;
  @override
  final bool isPasswordEmpty;

  @override
  String toString() {
    return 'EmailState.validationFailed(isEmailEmpty: $isEmailEmpty, isEmailInvalid: $isEmailInvalid, isPasswordEmpty: $isPasswordEmpty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailedImpl &&
            (identical(other.isEmailEmpty, isEmailEmpty) ||
                other.isEmailEmpty == isEmailEmpty) &&
            (identical(other.isEmailInvalid, isEmailInvalid) ||
                other.isEmailInvalid == isEmailInvalid) &&
            (identical(other.isPasswordEmpty, isPasswordEmpty) ||
                other.isPasswordEmpty == isPasswordEmpty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isEmailEmpty, isEmailInvalid, isPasswordEmpty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailedImplCopyWith<_$ValidationFailedImpl> get copyWith =>
      __$$ValidationFailedImplCopyWithImpl<_$ValidationFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return validationFailed(isEmailEmpty, isEmailInvalid, isPasswordEmpty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return validationFailed?.call(
        isEmailEmpty, isEmailInvalid, isPasswordEmpty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (validationFailed != null) {
      return validationFailed(isEmailEmpty, isEmailInvalid, isPasswordEmpty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return validationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return validationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (validationFailed != null) {
      return validationFailed(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailed implements EmailState {
  const factory _ValidationFailed(
      final bool isEmailEmpty,
      final bool isEmailInvalid,
      final bool isPasswordEmpty) = _$ValidationFailedImpl;

  bool get isEmailEmpty;
  bool get isEmailInvalid;
  bool get isPasswordEmpty;
  @JsonKey(ignore: true)
  _$$ValidationFailedImplCopyWith<_$ValidationFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'EmailState.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements EmailState {
  const factory _UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$WrongPasswordImplCopyWith<$Res> {
  factory _$$WrongPasswordImplCopyWith(
          _$WrongPasswordImpl value, $Res Function(_$WrongPasswordImpl) then) =
      __$$WrongPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongPasswordImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$WrongPasswordImpl>
    implements _$$WrongPasswordImplCopyWith<$Res> {
  __$$WrongPasswordImplCopyWithImpl(
      _$WrongPasswordImpl _value, $Res Function(_$WrongPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongPasswordImpl implements _WrongPassword {
  const _$WrongPasswordImpl();

  @override
  String toString() {
    return 'EmailState.wrongPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword implements EmailState {
  const factory _WrongPassword() = _$WrongPasswordImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'EmailState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements EmailState {
  const factory _LoggedIn() = _$LoggedInImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'EmailState.error()';
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
    required TResult Function() initial,
    required TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)
        validationFailed,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty)?
        validationFailed,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EmailState {
  const factory _Error() = _$ErrorImpl;
}
