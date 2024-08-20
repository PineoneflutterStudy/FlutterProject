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
    required TResult Function(String email, String providers) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() userInfoMissing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email, String providers)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? userInfoMissing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email, String providers)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? userInfoMissing,
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
    required TResult Function(_UserInfoMissing value) userInfoMissing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_UserInfoMissing value)? userInfoMissing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_UserInfoMissing value)? userInfoMissing,
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
    required TResult Function(String email, String providers) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() userInfoMissing,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email, String providers)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? userInfoMissing,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email, String providers)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? userInfoMissing,
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
    required TResult Function(_UserInfoMissing value) userInfoMissing,
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
    TResult? Function(_UserInfoMissing value)? userInfoMissing,
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
    TResult Function(_UserInfoMissing value)? userInfoMissing,
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
    required TResult Function(String email, String providers) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() userInfoMissing,
  }) {
    return loginOptionItemPressed(authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email, String providers)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? userInfoMissing,
  }) {
    return loginOptionItemPressed?.call(authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email, String providers)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? userInfoMissing,
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
    required TResult Function(_UserInfoMissing value) userInfoMissing,
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
    TResult? Function(_UserInfoMissing value)? userInfoMissing,
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
    TResult Function(_UserInfoMissing value)? userInfoMissing,
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
  $Res call({String email, String providers});
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
    Object? providers = null,
  }) {
    return _then(_$EmailDuplicatedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailDuplicatedImpl implements _EmailDuplicated {
  const _$EmailDuplicatedImpl(this.email, this.providers);

  @override
  final String email;
  @override
  final String providers;

  @override
  String toString() {
    return 'LoginEvent.emailDuplicated(email: $email, providers: $providers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailDuplicatedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providers, providers) ||
                other.providers == providers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, providers);

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
    required TResult Function(String email, String providers) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() userInfoMissing,
  }) {
    return emailDuplicated(email, providers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email, String providers)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? userInfoMissing,
  }) {
    return emailDuplicated?.call(email, providers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email, String providers)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? userInfoMissing,
    required TResult orElse(),
  }) {
    if (emailDuplicated != null) {
      return emailDuplicated(email, providers);
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
    required TResult Function(_UserInfoMissing value) userInfoMissing,
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
    TResult? Function(_UserInfoMissing value)? userInfoMissing,
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
    TResult Function(_UserInfoMissing value)? userInfoMissing,
    required TResult orElse(),
  }) {
    if (emailDuplicated != null) {
      return emailDuplicated(this);
    }
    return orElse();
  }
}

abstract class _EmailDuplicated implements LoginEvent {
  const factory _EmailDuplicated(final String email, final String providers) =
      _$EmailDuplicatedImpl;

  String get email;
  String get providers;
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
    required TResult Function(String email, String providers) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() userInfoMissing,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email, String providers)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? userInfoMissing,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email, String providers)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? userInfoMissing,
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
    required TResult Function(_UserInfoMissing value) userInfoMissing,
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
    TResult? Function(_UserInfoMissing value)? userInfoMissing,
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
    TResult Function(_UserInfoMissing value)? userInfoMissing,
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
abstract class _$$UserInfoMissingImplCopyWith<$Res> {
  factory _$$UserInfoMissingImplCopyWith(_$UserInfoMissingImpl value,
          $Res Function(_$UserInfoMissingImpl) then) =
      __$$UserInfoMissingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInfoMissingImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserInfoMissingImpl>
    implements _$$UserInfoMissingImplCopyWith<$Res> {
  __$$UserInfoMissingImplCopyWithImpl(
      _$UserInfoMissingImpl _value, $Res Function(_$UserInfoMissingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInfoMissingImpl implements _UserInfoMissing {
  const _$UserInfoMissingImpl();

  @override
  String toString() {
    return 'LoginEvent.userInfoMissing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInfoMissingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthType authType) loginOptionItemPressed,
    required TResult Function(String email, String providers) emailDuplicated,
    required TResult Function(User? user) userChanged,
    required TResult Function() userInfoMissing,
  }) {
    return userInfoMissing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthType authType)? loginOptionItemPressed,
    TResult? Function(String email, String providers)? emailDuplicated,
    TResult? Function(User? user)? userChanged,
    TResult? Function()? userInfoMissing,
  }) {
    return userInfoMissing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthType authType)? loginOptionItemPressed,
    TResult Function(String email, String providers)? emailDuplicated,
    TResult Function(User? user)? userChanged,
    TResult Function()? userInfoMissing,
    required TResult orElse(),
  }) {
    if (userInfoMissing != null) {
      return userInfoMissing();
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
    required TResult Function(_UserInfoMissing value) userInfoMissing,
  }) {
    return userInfoMissing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult? Function(_EmailDuplicated value)? emailDuplicated,
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_UserInfoMissing value)? userInfoMissing,
  }) {
    return userInfoMissing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginOptionItemPressed value)? loginOptionItemPressed,
    TResult Function(_EmailDuplicated value)? emailDuplicated,
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_UserInfoMissing value)? userInfoMissing,
    required TResult orElse(),
  }) {
    if (userInfoMissing != null) {
      return userInfoMissing(this);
    }
    return orElse();
  }
}

abstract class _UserInfoMissing implements LoginEvent {
  const factory _UserInfoMissing() = _$UserInfoMissingImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
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
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
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
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
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
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
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
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return alreadyLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return alreadyLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
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
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
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
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
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
  $Res call({String email, String providers});
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
    Object? providers = null,
  }) {
    return _then(_$EmailDuplicateErrorImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailDuplicateErrorImpl implements _EmailDuplicateError {
  const _$EmailDuplicateErrorImpl(this.email, this.providers);

  @override
  final String email;
  @override
  final String providers;

  @override
  String toString() {
    return 'LoginState.emailDuplicateError(email: $email, providers: $providers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailDuplicateErrorImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.providers, providers) ||
                other.providers == providers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, providers);

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
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return emailDuplicateError(email, providers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return emailDuplicateError?.call(email, providers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (emailDuplicateError != null) {
      return emailDuplicateError(email, providers);
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
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
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
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
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (emailDuplicateError != null) {
      return emailDuplicateError(this);
    }
    return orElse();
  }
}

abstract class _EmailDuplicateError implements LoginState {
  const factory _EmailDuplicateError(
      final String email, final String providers) = _$EmailDuplicateErrorImpl;

  String get email;
  String get providers;
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
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return requireMoreUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return requireMoreUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
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
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
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
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
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
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
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
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
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
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
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
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'LoginState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alreadyLoggedIn,
    required TResult Function(String email, String providers)
        emailDuplicateError,
    required TResult Function() requireMoreUserInfo,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function(String email, String providers)? emailDuplicateError,
    TResult? Function()? requireMoreUserInfo,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alreadyLoggedIn,
    TResult Function(String email, String providers)? emailDuplicateError,
    TResult Function()? requireMoreUserInfo,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlreadyLoggedIn value) alreadyLoggedIn,
    required TResult Function(_EmailDuplicateError value) emailDuplicateError,
    required TResult Function(_RequireMoreUserInfo value) requireMoreUserInfo,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult? Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult? Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlreadyLoggedIn value)? alreadyLoggedIn,
    TResult Function(_EmailDuplicateError value)? emailDuplicateError,
    TResult Function(_RequireMoreUserInfo value)? requireMoreUserInfo,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements LoginState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}
