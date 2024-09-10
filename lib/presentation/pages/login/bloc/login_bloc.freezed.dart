// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginOptionItemPressed value)
        loginOptionItemPressed,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_ErrorOccurred value) errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_ErrorOccurred value)? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_ErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

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
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'LoginEvent.started()';
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
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() errorOccurred,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? errorOccurred,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? errorOccurred,
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
    required TResult Function(_LoginOptionItemPressed value)
        loginOptionItemPressed,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_ErrorOccurred value) errorOccurred,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_ErrorOccurred value)? errorOccurred,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_ErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginOptionItemPressedImplCopyWith<$Res> {
  factory _$$LoginOptionItemPressedImplCopyWith(
          _$LoginOptionItemPressedImpl value,
          $Res Function(_$LoginOptionItemPressedImpl) then) =
      __$$LoginOptionItemPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthType authType});
}

/// @nodoc
class __$$LoginOptionItemPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginOptionItemPressedImpl>
    implements _$$LoginOptionItemPressedImplCopyWith<$Res> {
  __$$LoginOptionItemPressedImplCopyWithImpl(
      _$LoginOptionItemPressedImpl _value,
      $Res Function(_$LoginOptionItemPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authType = null,
  }) {
    return _then(_$LoginOptionItemPressedImpl(
      null == authType
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$LoginOptionItemPressedImpl implements _LoginOptionItemPressed {
  const _$LoginOptionItemPressedImpl(this.authType);

  @override
  final AuthType authType;

  @override
  String toString() {
    return 'LoginEvent.loginOptionItemPressed(authType: $authType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOptionItemPressedImpl &&
            (identical(other.authType, authType) ||
                other.authType == authType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginOptionItemPressedImplCopyWith<_$LoginOptionItemPressedImpl>
      get copyWith => __$$LoginOptionItemPressedImplCopyWithImpl<
          _$LoginOptionItemPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() errorOccurred,
  }) {
    return loginOptionItemPressed(authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? errorOccurred,
  }) {
    return loginOptionItemPressed?.call(authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) {
    if (loginOptionItemPressed != null) {
      return loginOptionItemPressed(authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginOptionItemPressed value)
        loginOptionItemPressed,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_ErrorOccurred value) errorOccurred,
  }) {
    return loginOptionItemPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_ErrorOccurred value)? errorOccurred,
  }) {
    return loginOptionItemPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_ErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (loginOptionItemPressed != null) {
      return loginOptionItemPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginOptionItemPressed implements LoginEvent {
  const factory _LoginOptionItemPressed(final AuthType authType) =
      _$LoginOptionItemPressedImpl;

  AuthType get authType;
  @JsonKey(ignore: true)
  _$$LoginOptionItemPressedImplCopyWith<_$LoginOptionItemPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$LoginEventCopyWithImpl<$Res, _$EmailDuplicatedImpl>
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
    return 'LoginEvent.emailDuplicated(email: $email)';
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
    required TResult Function() started,
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() errorOccurred,
  }) {
    return emailDuplicated(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? errorOccurred,
  }) {
    return emailDuplicated?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? errorOccurred,
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
    required TResult Function(_Started value) started,
    required TResult Function(_LoginOptionItemPressed value)
        loginOptionItemPressed,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_ErrorOccurred value) errorOccurred,
  }) {
    return emailDuplicated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_ErrorOccurred value)? errorOccurred,
  }) {
    return emailDuplicated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_ErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (emailDuplicated != null) {
      return emailDuplicated(this);
    }
    return orElse();
  }
}

abstract class _EmailDuplicated implements LoginEvent {
  const factory _EmailDuplicated(final String email) = _$EmailDuplicatedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailDuplicatedImplCopyWith<_$EmailDuplicatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserChangedImplCopyWith<$Res> {
  factory _$$UserChangedImplCopyWith(
          _$UserChangedImpl value, $Res Function(_$UserChangedImpl) then) =
      __$$UserChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$UserChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserChangedImpl>
    implements _$$UserChangedImplCopyWith<$Res> {
  __$$UserChangedImplCopyWithImpl(
      _$UserChangedImpl _value, $Res Function(_$UserChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserChangedImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UserChangedImpl implements _UserChanged {
  const _$UserChangedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'LoginEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserChangedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserChangedImplCopyWith<_$UserChangedImpl> get copyWith =>
      __$$UserChangedImplCopyWithImpl<_$UserChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() errorOccurred,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? errorOccurred,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginOptionItemPressed value)
        loginOptionItemPressed,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_ErrorOccurred value) errorOccurred,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_ErrorOccurred value)? errorOccurred,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_ErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _UserChanged implements LoginEvent {
  const factory _UserChanged(final User? user) = _$UserChangedImpl;

  User? get user;
  @JsonKey(ignore: true)
  _$$UserChangedImplCopyWith<_$UserChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOccurredImplCopyWith<$Res> {
  factory _$$ErrorOccurredImplCopyWith(
          _$ErrorOccurredImpl value, $Res Function(_$ErrorOccurredImpl) then) =
      __$$ErrorOccurredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorOccurredImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ErrorOccurredImpl>
    implements _$$ErrorOccurredImplCopyWith<$Res> {
  __$$ErrorOccurredImplCopyWithImpl(
      _$ErrorOccurredImpl _value, $Res Function(_$ErrorOccurredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorOccurredImpl implements _ErrorOccurred {
  const _$ErrorOccurredImpl();

  @override
  String toString() {
    return 'LoginEvent.errorOccurred()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorOccurredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() errorOccurred,
  }) {
    return errorOccurred();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? errorOccurred,
  }) {
    return errorOccurred?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginOptionItemPressed value)
        loginOptionItemPressed,
    required TResult Function(_EmailDuplicated value) emailDuplicated,
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_ErrorOccurred value) errorOccurred,
  }) {
    return errorOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_ErrorOccurred value)? errorOccurred,
  }) {
    return errorOccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_ErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccurred implements LoginEvent {
  const factory _ErrorOccurred() = _$ErrorOccurredImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LoginState.initial()';
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
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
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
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
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

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AlreadyLoggedInImplCopyWith<$Res> {
  factory _$$AlreadyLoggedInImplCopyWith(_$AlreadyLoggedInImpl value,
          $Res Function(_$AlreadyLoggedInImpl) then) =
      __$$AlreadyLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyLoggedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AlreadyLoggedInImpl>
    implements _$$AlreadyLoggedInImplCopyWith<$Res> {
  __$$AlreadyLoggedInImplCopyWithImpl(
      _$AlreadyLoggedInImpl _value, $Res Function(_$AlreadyLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyLoggedInImpl implements _AlreadyLoggedIn {
  const _$AlreadyLoggedInImpl();

  @override
  String toString() {
    return 'LoginState.alreadyLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlreadyLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return alreadyLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return alreadyLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (alreadyLoggedIn != null) {
      return alreadyLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return alreadyLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return alreadyLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (alreadyLoggedIn != null) {
      return alreadyLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _AlreadyLoggedIn implements LoginState {
  const factory _AlreadyLoggedIn() = _$AlreadyLoggedInImpl;
}

/// @nodoc
abstract class _$$EmailDuplicateErrorImplCopyWith<$Res> {
  factory _$$EmailDuplicateErrorImplCopyWith(_$EmailDuplicateErrorImpl value,
          $Res Function(_$EmailDuplicateErrorImpl) then) =
      __$$EmailDuplicateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailDuplicateErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$EmailDuplicateErrorImpl>
    implements _$$EmailDuplicateErrorImplCopyWith<$Res> {
  __$$EmailDuplicateErrorImplCopyWithImpl(_$EmailDuplicateErrorImpl _value,
      $Res Function(_$EmailDuplicateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailDuplicateErrorImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailDuplicateErrorImpl implements _EmailDuplicateError {
  const _$EmailDuplicateErrorImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.emailDuplicateError(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailDuplicateErrorImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailDuplicateErrorImplCopyWith<_$EmailDuplicateErrorImpl> get copyWith =>
      __$$EmailDuplicateErrorImplCopyWithImpl<_$EmailDuplicateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return emailDuplicateError(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return emailDuplicateError?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (emailDuplicateError != null) {
      return emailDuplicateError(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return emailDuplicateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return emailDuplicateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (emailDuplicateError != null) {
      return emailDuplicateError(this);
    }
    return orElse();
  }
}

abstract class _EmailDuplicateError implements LoginState {
  const factory _EmailDuplicateError(final String email) =
      _$EmailDuplicateErrorImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailDuplicateErrorImplCopyWith<_$EmailDuplicateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequireMoreUserInfoImplCopyWith<$Res> {
  factory _$$RequireMoreUserInfoImplCopyWith(_$RequireMoreUserInfoImpl value,
          $Res Function(_$RequireMoreUserInfoImpl) then) =
      __$$RequireMoreUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequireMoreUserInfoImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequireMoreUserInfoImpl>
    implements _$$RequireMoreUserInfoImplCopyWith<$Res> {
  __$$RequireMoreUserInfoImplCopyWithImpl(_$RequireMoreUserInfoImpl _value,
      $Res Function(_$RequireMoreUserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequireMoreUserInfoImpl implements _RequireMoreUserInfo {
  const _$RequireMoreUserInfoImpl();

  @override
  String toString() {
    return 'LoginState.requireMoreUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequireMoreUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return requireMoreUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return requireMoreUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (requireMoreUserInfo != null) {
      return requireMoreUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return requireMoreUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return requireMoreUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (requireMoreUserInfo != null) {
      return requireMoreUserInfo(this);
    }
    return orElse();
  }
}

abstract class _RequireMoreUserInfo implements LoginState {
  const factory _RequireMoreUserInfo() = _$RequireMoreUserInfoImpl;
}

/// @nodoc
abstract class _$$NavigateToEmailLoginImplCopyWith<$Res> {
  factory _$$NavigateToEmailLoginImplCopyWith(_$NavigateToEmailLoginImpl value,
          $Res Function(_$NavigateToEmailLoginImpl) then) =
      __$$NavigateToEmailLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToEmailLoginImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$NavigateToEmailLoginImpl>
    implements _$$NavigateToEmailLoginImplCopyWith<$Res> {
  __$$NavigateToEmailLoginImplCopyWithImpl(_$NavigateToEmailLoginImpl _value,
      $Res Function(_$NavigateToEmailLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigateToEmailLoginImpl implements _NavigateToEmailLogin {
  const _$NavigateToEmailLoginImpl();

  @override
  String toString() {
    return 'LoginState.navigateToEmailLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToEmailLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return navigateToEmailLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return navigateToEmailLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (navigateToEmailLogin != null) {
      return navigateToEmailLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return navigateToEmailLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return navigateToEmailLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (navigateToEmailLogin != null) {
      return navigateToEmailLogin(this);
    }
    return orElse();
  }
}

abstract class _NavigateToEmailLogin implements LoginState {
  const factory _NavigateToEmailLogin() = _$NavigateToEmailLoginImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedInImpl>
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
    return 'LoginState.loggedIn()';
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
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
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
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
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

abstract class _LoggedIn implements LoginState {
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
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'LoginState.error()';
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
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email) emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() navigateToEmailLogin,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? navigateToEmailLogin,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? navigateToEmailLogin,
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
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_NavigateToEmailLogin value) navigateToEmailLogin,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_NavigateToEmailLogin value)? navigateToEmailLogin,
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

abstract class _Error implements LoginState {
  const factory _Error() = _$ErrorImpl;
}
