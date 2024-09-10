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
    required TResult Function(String email) emailSubmitted,
    required TResult Function(String password) passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailSubmitted,
    TResult? Function(String password)? passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailSubmitted,
    TResult Function(String password)? passwordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailSubmitted value) emailSubmitted,
    required TResult Function(_PasswordSubmitted value) passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailSubmitted value)? emailSubmitted,
    TResult? Function(_PasswordSubmitted value)? passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailSubmitted value)? emailSubmitted,
    TResult Function(_PasswordSubmitted value)? passwordSubmitted,
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
    required TResult Function(String email) emailSubmitted,
    required TResult Function(String password) passwordSubmitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailSubmitted,
    TResult? Function(String password)? passwordSubmitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailSubmitted,
    TResult Function(String password)? passwordSubmitted,
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
    required TResult Function(_EmailSubmitted value) emailSubmitted,
    required TResult Function(_PasswordSubmitted value) passwordSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailSubmitted value)? emailSubmitted,
    TResult? Function(_PasswordSubmitted value)? passwordSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailSubmitted value)? emailSubmitted,
    TResult Function(_PasswordSubmitted value)? passwordSubmitted,
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
abstract class _$$EmailSubmittedImplCopyWith<$Res> {
  factory _$$EmailSubmittedImplCopyWith(_$EmailSubmittedImpl value,
          $Res Function(_$EmailSubmittedImpl) then) =
      __$$EmailSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailSubmittedImplCopyWithImpl<$Res>
    extends _$EmailEventCopyWithImpl<$Res, _$EmailSubmittedImpl>
    implements _$$EmailSubmittedImplCopyWith<$Res> {
  __$$EmailSubmittedImplCopyWithImpl(
      _$EmailSubmittedImpl _value, $Res Function(_$EmailSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailSubmittedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailSubmittedImpl implements _EmailSubmitted {
  const _$EmailSubmittedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailEvent.emailSubmitted(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailSubmittedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailSubmittedImplCopyWith<_$EmailSubmittedImpl> get copyWith =>
      __$$EmailSubmittedImplCopyWithImpl<_$EmailSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailSubmitted,
    required TResult Function(String password) passwordSubmitted,
  }) {
    return emailSubmitted(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailSubmitted,
    TResult? Function(String password)? passwordSubmitted,
  }) {
    return emailSubmitted?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailSubmitted,
    TResult Function(String password)? passwordSubmitted,
    required TResult orElse(),
  }) {
    if (emailSubmitted != null) {
      return emailSubmitted(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailSubmitted value) emailSubmitted,
    required TResult Function(_PasswordSubmitted value) passwordSubmitted,
  }) {
    return emailSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailSubmitted value)? emailSubmitted,
    TResult? Function(_PasswordSubmitted value)? passwordSubmitted,
  }) {
    return emailSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailSubmitted value)? emailSubmitted,
    TResult Function(_PasswordSubmitted value)? passwordSubmitted,
    required TResult orElse(),
  }) {
    if (emailSubmitted != null) {
      return emailSubmitted(this);
    }
    return orElse();
  }
}

abstract class _EmailSubmitted implements EmailEvent {
  const factory _EmailSubmitted(final String email) = _$EmailSubmittedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailSubmittedImplCopyWith<_$EmailSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordSubmittedImplCopyWith<$Res> {
  factory _$$PasswordSubmittedImplCopyWith(_$PasswordSubmittedImpl value,
          $Res Function(_$PasswordSubmittedImpl) then) =
      __$$PasswordSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordSubmittedImplCopyWithImpl<$Res>
    extends _$EmailEventCopyWithImpl<$Res, _$PasswordSubmittedImpl>
    implements _$$PasswordSubmittedImplCopyWith<$Res> {
  __$$PasswordSubmittedImplCopyWithImpl(_$PasswordSubmittedImpl _value,
      $Res Function(_$PasswordSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordSubmittedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordSubmittedImpl implements _PasswordSubmitted {
  const _$PasswordSubmittedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'EmailEvent.passwordSubmitted(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordSubmittedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordSubmittedImplCopyWith<_$PasswordSubmittedImpl> get copyWith =>
      __$$PasswordSubmittedImplCopyWithImpl<_$PasswordSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailSubmitted,
    required TResult Function(String password) passwordSubmitted,
  }) {
    return passwordSubmitted(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailSubmitted,
    TResult? Function(String password)? passwordSubmitted,
  }) {
    return passwordSubmitted?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailSubmitted,
    TResult Function(String password)? passwordSubmitted,
    required TResult orElse(),
  }) {
    if (passwordSubmitted != null) {
      return passwordSubmitted(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailSubmitted value) emailSubmitted,
    required TResult Function(_PasswordSubmitted value) passwordSubmitted,
  }) {
    return passwordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailSubmitted value)? emailSubmitted,
    TResult? Function(_PasswordSubmitted value)? passwordSubmitted,
  }) {
    return passwordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailSubmitted value)? emailSubmitted,
    TResult Function(_PasswordSubmitted value)? passwordSubmitted,
    required TResult orElse(),
  }) {
    if (passwordSubmitted != null) {
      return passwordSubmitted(this);
    }
    return orElse();
  }
}

abstract class _PasswordSubmitted implements EmailEvent {
  const factory _PasswordSubmitted(final String password) =
      _$PasswordSubmittedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordSubmittedImplCopyWith<_$PasswordSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) emailDuplicated,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? emailDuplicated,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
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
    required TResult Function(String email) emailDuplicated,
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
    TResult? Function(String email)? emailDuplicated,
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
    TResult Function(String email)? emailDuplicated,
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
    required TResult Function(_EmailDuplicated value) emailDuplicated,
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
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
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
    TResult Function(_EmailDuplicated value)? emailDuplicated,
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
abstract class _$$EmailDuplicatedImplCopyWith<$Res> {
  factory _$$EmailDuplicatedImplCopyWith(_$EmailDuplicatedImpl value,
          $Res Function(_$EmailDuplicatedImpl) then) =
      __$$EmailDuplicatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailDuplicatedImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$EmailDuplicatedImpl>
    implements _$$EmailDuplicatedImplCopyWith<$Res> {
  __$$EmailDuplicatedImplCopyWithImpl(
      _$EmailDuplicatedImpl _value, $Res Function(_$EmailDuplicatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailDuplicatedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailDuplicatedImpl implements _EmailDuplicated {
  const _$EmailDuplicatedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailState.emailDuplicated(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailDuplicatedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailDuplicatedImplCopyWith<_$EmailDuplicatedImpl> get copyWith =>
      __$$EmailDuplicatedImplCopyWithImpl<_$EmailDuplicatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) emailDuplicated,
    required TResult Function() wrongPassword,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return emailDuplicated(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function()? wrongPassword,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return emailDuplicated?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? emailDuplicated,
    TResult Function()? wrongPassword,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (emailDuplicated != null) {
      return emailDuplicated(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return emailDuplicated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_WrongPassword value)? wrongPassword,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return emailDuplicated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (emailDuplicated != null) {
      return emailDuplicated(this);
    }
    return orElse();
  }
}

abstract class _EmailDuplicated implements EmailState {
  const factory _EmailDuplicated(final String email) = _$EmailDuplicatedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailDuplicatedImplCopyWith<_$EmailDuplicatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String email) emailDuplicated,
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
    TResult? Function(String email)? emailDuplicated,
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
    TResult Function(String email)? emailDuplicated,
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
    required TResult Function(_EmailDuplicated value) emailDuplicated,
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
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
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
    TResult Function(_EmailDuplicated value)? emailDuplicated,
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
    required TResult Function(String email) emailDuplicated,
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
    TResult? Function(String email)? emailDuplicated,
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
    TResult Function(String email)? emailDuplicated,
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
    required TResult Function(_EmailDuplicated value) emailDuplicated,
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
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
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
    TResult Function(_EmailDuplicated value)? emailDuplicated,
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
    required TResult Function(String email) emailDuplicated,
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
    TResult? Function(String email)? emailDuplicated,
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
    TResult Function(String email)? emailDuplicated,
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
    required TResult Function(_EmailDuplicated value) emailDuplicated,
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
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
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
    TResult Function(_EmailDuplicated value)? emailDuplicated,
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
