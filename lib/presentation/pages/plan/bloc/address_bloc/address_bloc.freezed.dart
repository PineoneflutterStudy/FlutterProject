// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) initialized,
    required TResult Function(String location) updated,
    required TResult Function(Address address) setAddress,
    required TResult Function(Address address) setXYUpdated,
    required TResult Function(int radius, String sort) filterUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? initialized,
    TResult? Function(String location)? updated,
    TResult? Function(Address address)? setAddress,
    TResult? Function(Address address)? setXYUpdated,
    TResult? Function(int radius, String sort)? filterUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? initialized,
    TResult Function(String location)? updated,
    TResult Function(Address address)? setAddress,
    TResult Function(Address address)? setXYUpdated,
    TResult Function(int radius, String sort)? filterUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddressInitialized value) initialized,
    required TResult Function(AddressUpdated value) updated,
    required TResult Function(SetAddressUpdated value) setAddress,
    required TResult Function(SetXYUpdated value) setXYUpdated,
    required TResult Function(FilterUpdated value) filterUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddressInitialized value)? initialized,
    TResult? Function(AddressUpdated value)? updated,
    TResult? Function(SetAddressUpdated value)? setAddress,
    TResult? Function(SetXYUpdated value)? setXYUpdated,
    TResult? Function(FilterUpdated value)? filterUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddressInitialized value)? initialized,
    TResult Function(AddressUpdated value)? updated,
    TResult Function(SetAddressUpdated value)? setAddress,
    TResult Function(SetXYUpdated value)? setXYUpdated,
    TResult Function(FilterUpdated value)? filterUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddressInitializedImplCopyWith<$Res> {
  factory _$$AddressInitializedImplCopyWith(_$AddressInitializedImpl value,
          $Res Function(_$AddressInitializedImpl) then) =
      __$$AddressInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$AddressInitializedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddressInitializedImpl>
    implements _$$AddressInitializedImplCopyWith<$Res> {
  __$$AddressInitializedImplCopyWithImpl(_$AddressInitializedImpl _value,
      $Res Function(_$AddressInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$AddressInitializedImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressInitializedImpl implements AddressInitialized {
  const _$AddressInitializedImpl(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'AddressEvent.initialized(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressInitializedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressInitializedImplCopyWith<_$AddressInitializedImpl> get copyWith =>
      __$$AddressInitializedImplCopyWithImpl<_$AddressInitializedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) initialized,
    required TResult Function(String location) updated,
    required TResult Function(Address address) setAddress,
    required TResult Function(Address address) setXYUpdated,
    required TResult Function(int radius, String sort) filterUpdated,
  }) {
    return initialized(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? initialized,
    TResult? Function(String location)? updated,
    TResult? Function(Address address)? setAddress,
    TResult? Function(Address address)? setXYUpdated,
    TResult? Function(int radius, String sort)? filterUpdated,
  }) {
    return initialized?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? initialized,
    TResult Function(String location)? updated,
    TResult Function(Address address)? setAddress,
    TResult Function(Address address)? setXYUpdated,
    TResult Function(int radius, String sort)? filterUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddressInitialized value) initialized,
    required TResult Function(AddressUpdated value) updated,
    required TResult Function(SetAddressUpdated value) setAddress,
    required TResult Function(SetXYUpdated value) setXYUpdated,
    required TResult Function(FilterUpdated value) filterUpdated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddressInitialized value)? initialized,
    TResult? Function(AddressUpdated value)? updated,
    TResult? Function(SetAddressUpdated value)? setAddress,
    TResult? Function(SetXYUpdated value)? setXYUpdated,
    TResult? Function(FilterUpdated value)? filterUpdated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddressInitialized value)? initialized,
    TResult Function(AddressUpdated value)? updated,
    TResult Function(SetAddressUpdated value)? setAddress,
    TResult Function(SetXYUpdated value)? setXYUpdated,
    TResult Function(FilterUpdated value)? filterUpdated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class AddressInitialized implements AddressEvent {
  const factory AddressInitialized(final String location) =
      _$AddressInitializedImpl;

  String get location;
  @JsonKey(ignore: true)
  _$$AddressInitializedImplCopyWith<_$AddressInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressUpdatedImplCopyWith<$Res> {
  factory _$$AddressUpdatedImplCopyWith(_$AddressUpdatedImpl value,
          $Res Function(_$AddressUpdatedImpl) then) =
      __$$AddressUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$AddressUpdatedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddressUpdatedImpl>
    implements _$$AddressUpdatedImplCopyWith<$Res> {
  __$$AddressUpdatedImplCopyWithImpl(
      _$AddressUpdatedImpl _value, $Res Function(_$AddressUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$AddressUpdatedImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressUpdatedImpl implements AddressUpdated {
  const _$AddressUpdatedImpl(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'AddressEvent.updated(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressUpdatedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressUpdatedImplCopyWith<_$AddressUpdatedImpl> get copyWith =>
      __$$AddressUpdatedImplCopyWithImpl<_$AddressUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) initialized,
    required TResult Function(String location) updated,
    required TResult Function(Address address) setAddress,
    required TResult Function(Address address) setXYUpdated,
    required TResult Function(int radius, String sort) filterUpdated,
  }) {
    return updated(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? initialized,
    TResult? Function(String location)? updated,
    TResult? Function(Address address)? setAddress,
    TResult? Function(Address address)? setXYUpdated,
    TResult? Function(int radius, String sort)? filterUpdated,
  }) {
    return updated?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? initialized,
    TResult Function(String location)? updated,
    TResult Function(Address address)? setAddress,
    TResult Function(Address address)? setXYUpdated,
    TResult Function(int radius, String sort)? filterUpdated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddressInitialized value) initialized,
    required TResult Function(AddressUpdated value) updated,
    required TResult Function(SetAddressUpdated value) setAddress,
    required TResult Function(SetXYUpdated value) setXYUpdated,
    required TResult Function(FilterUpdated value) filterUpdated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddressInitialized value)? initialized,
    TResult? Function(AddressUpdated value)? updated,
    TResult? Function(SetAddressUpdated value)? setAddress,
    TResult? Function(SetXYUpdated value)? setXYUpdated,
    TResult? Function(FilterUpdated value)? filterUpdated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddressInitialized value)? initialized,
    TResult Function(AddressUpdated value)? updated,
    TResult Function(SetAddressUpdated value)? setAddress,
    TResult Function(SetXYUpdated value)? setXYUpdated,
    TResult Function(FilterUpdated value)? filterUpdated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class AddressUpdated implements AddressEvent {
  const factory AddressUpdated(final String location) = _$AddressUpdatedImpl;

  String get location;
  @JsonKey(ignore: true)
  _$$AddressUpdatedImplCopyWith<_$AddressUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAddressUpdatedImplCopyWith<$Res> {
  factory _$$SetAddressUpdatedImplCopyWith(_$SetAddressUpdatedImpl value,
          $Res Function(_$SetAddressUpdatedImpl) then) =
      __$$SetAddressUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$SetAddressUpdatedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SetAddressUpdatedImpl>
    implements _$$SetAddressUpdatedImplCopyWith<$Res> {
  __$$SetAddressUpdatedImplCopyWithImpl(_$SetAddressUpdatedImpl _value,
      $Res Function(_$SetAddressUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SetAddressUpdatedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$SetAddressUpdatedImpl implements SetAddressUpdated {
  const _$SetAddressUpdatedImpl(this.address);

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressEvent.setAddress(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAddressUpdatedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAddressUpdatedImplCopyWith<_$SetAddressUpdatedImpl> get copyWith =>
      __$$SetAddressUpdatedImplCopyWithImpl<_$SetAddressUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) initialized,
    required TResult Function(String location) updated,
    required TResult Function(Address address) setAddress,
    required TResult Function(Address address) setXYUpdated,
    required TResult Function(int radius, String sort) filterUpdated,
  }) {
    return setAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? initialized,
    TResult? Function(String location)? updated,
    TResult? Function(Address address)? setAddress,
    TResult? Function(Address address)? setXYUpdated,
    TResult? Function(int radius, String sort)? filterUpdated,
  }) {
    return setAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? initialized,
    TResult Function(String location)? updated,
    TResult Function(Address address)? setAddress,
    TResult Function(Address address)? setXYUpdated,
    TResult Function(int radius, String sort)? filterUpdated,
    required TResult orElse(),
  }) {
    if (setAddress != null) {
      return setAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddressInitialized value) initialized,
    required TResult Function(AddressUpdated value) updated,
    required TResult Function(SetAddressUpdated value) setAddress,
    required TResult Function(SetXYUpdated value) setXYUpdated,
    required TResult Function(FilterUpdated value) filterUpdated,
  }) {
    return setAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddressInitialized value)? initialized,
    TResult? Function(AddressUpdated value)? updated,
    TResult? Function(SetAddressUpdated value)? setAddress,
    TResult? Function(SetXYUpdated value)? setXYUpdated,
    TResult? Function(FilterUpdated value)? filterUpdated,
  }) {
    return setAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddressInitialized value)? initialized,
    TResult Function(AddressUpdated value)? updated,
    TResult Function(SetAddressUpdated value)? setAddress,
    TResult Function(SetXYUpdated value)? setXYUpdated,
    TResult Function(FilterUpdated value)? filterUpdated,
    required TResult orElse(),
  }) {
    if (setAddress != null) {
      return setAddress(this);
    }
    return orElse();
  }
}

abstract class SetAddressUpdated implements AddressEvent {
  const factory SetAddressUpdated(final Address address) =
      _$SetAddressUpdatedImpl;

  Address get address;
  @JsonKey(ignore: true)
  _$$SetAddressUpdatedImplCopyWith<_$SetAddressUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetXYUpdatedImplCopyWith<$Res> {
  factory _$$SetXYUpdatedImplCopyWith(
          _$SetXYUpdatedImpl value, $Res Function(_$SetXYUpdatedImpl) then) =
      __$$SetXYUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$SetXYUpdatedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SetXYUpdatedImpl>
    implements _$$SetXYUpdatedImplCopyWith<$Res> {
  __$$SetXYUpdatedImplCopyWithImpl(
      _$SetXYUpdatedImpl _value, $Res Function(_$SetXYUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SetXYUpdatedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$SetXYUpdatedImpl implements SetXYUpdated {
  const _$SetXYUpdatedImpl(this.address);

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressEvent.setXYUpdated(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetXYUpdatedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetXYUpdatedImplCopyWith<_$SetXYUpdatedImpl> get copyWith =>
      __$$SetXYUpdatedImplCopyWithImpl<_$SetXYUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) initialized,
    required TResult Function(String location) updated,
    required TResult Function(Address address) setAddress,
    required TResult Function(Address address) setXYUpdated,
    required TResult Function(int radius, String sort) filterUpdated,
  }) {
    return setXYUpdated(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? initialized,
    TResult? Function(String location)? updated,
    TResult? Function(Address address)? setAddress,
    TResult? Function(Address address)? setXYUpdated,
    TResult? Function(int radius, String sort)? filterUpdated,
  }) {
    return setXYUpdated?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? initialized,
    TResult Function(String location)? updated,
    TResult Function(Address address)? setAddress,
    TResult Function(Address address)? setXYUpdated,
    TResult Function(int radius, String sort)? filterUpdated,
    required TResult orElse(),
  }) {
    if (setXYUpdated != null) {
      return setXYUpdated(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddressInitialized value) initialized,
    required TResult Function(AddressUpdated value) updated,
    required TResult Function(SetAddressUpdated value) setAddress,
    required TResult Function(SetXYUpdated value) setXYUpdated,
    required TResult Function(FilterUpdated value) filterUpdated,
  }) {
    return setXYUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddressInitialized value)? initialized,
    TResult? Function(AddressUpdated value)? updated,
    TResult? Function(SetAddressUpdated value)? setAddress,
    TResult? Function(SetXYUpdated value)? setXYUpdated,
    TResult? Function(FilterUpdated value)? filterUpdated,
  }) {
    return setXYUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddressInitialized value)? initialized,
    TResult Function(AddressUpdated value)? updated,
    TResult Function(SetAddressUpdated value)? setAddress,
    TResult Function(SetXYUpdated value)? setXYUpdated,
    TResult Function(FilterUpdated value)? filterUpdated,
    required TResult orElse(),
  }) {
    if (setXYUpdated != null) {
      return setXYUpdated(this);
    }
    return orElse();
  }
}

abstract class SetXYUpdated implements AddressEvent {
  const factory SetXYUpdated(final Address address) = _$SetXYUpdatedImpl;

  Address get address;
  @JsonKey(ignore: true)
  _$$SetXYUpdatedImplCopyWith<_$SetXYUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterUpdatedImplCopyWith<$Res> {
  factory _$$FilterUpdatedImplCopyWith(
          _$FilterUpdatedImpl value, $Res Function(_$FilterUpdatedImpl) then) =
      __$$FilterUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int radius, String sort});
}

/// @nodoc
class __$$FilterUpdatedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$FilterUpdatedImpl>
    implements _$$FilterUpdatedImplCopyWith<$Res> {
  __$$FilterUpdatedImplCopyWithImpl(
      _$FilterUpdatedImpl _value, $Res Function(_$FilterUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
    Object? sort = null,
  }) {
    return _then(_$FilterUpdatedImpl(
      null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterUpdatedImpl implements FilterUpdated {
  const _$FilterUpdatedImpl(this.radius, this.sort);

  @override
  final int radius;
  @override
  final String sort;

  @override
  String toString() {
    return 'AddressEvent.filterUpdated(radius: $radius, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterUpdatedImpl &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radius, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterUpdatedImplCopyWith<_$FilterUpdatedImpl> get copyWith =>
      __$$FilterUpdatedImplCopyWithImpl<_$FilterUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) initialized,
    required TResult Function(String location) updated,
    required TResult Function(Address address) setAddress,
    required TResult Function(Address address) setXYUpdated,
    required TResult Function(int radius, String sort) filterUpdated,
  }) {
    return filterUpdated(radius, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? initialized,
    TResult? Function(String location)? updated,
    TResult? Function(Address address)? setAddress,
    TResult? Function(Address address)? setXYUpdated,
    TResult? Function(int radius, String sort)? filterUpdated,
  }) {
    return filterUpdated?.call(radius, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? initialized,
    TResult Function(String location)? updated,
    TResult Function(Address address)? setAddress,
    TResult Function(Address address)? setXYUpdated,
    TResult Function(int radius, String sort)? filterUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(radius, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddressInitialized value) initialized,
    required TResult Function(AddressUpdated value) updated,
    required TResult Function(SetAddressUpdated value) setAddress,
    required TResult Function(SetXYUpdated value) setXYUpdated,
    required TResult Function(FilterUpdated value) filterUpdated,
  }) {
    return filterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddressInitialized value)? initialized,
    TResult? Function(AddressUpdated value)? updated,
    TResult? Function(SetAddressUpdated value)? setAddress,
    TResult? Function(SetXYUpdated value)? setXYUpdated,
    TResult? Function(FilterUpdated value)? filterUpdated,
  }) {
    return filterUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddressInitialized value)? initialized,
    TResult Function(AddressUpdated value)? updated,
    TResult Function(SetAddressUpdated value)? setAddress,
    TResult Function(SetXYUpdated value)? setXYUpdated,
    TResult Function(FilterUpdated value)? filterUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(this);
    }
    return orElse();
  }
}

abstract class FilterUpdated implements AddressEvent {
  const factory FilterUpdated(final int radius, final String sort) =
      _$FilterUpdatedImpl;

  int get radius;
  String get sort;
  @JsonKey(ignore: true)
  _$$FilterUpdatedImplCopyWith<_$FilterUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Address addressInfo) success,
    required TResult Function(ErrorResponse error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Address addressInfo)? success,
    TResult? Function(ErrorResponse error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Address addressInfo)? success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

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
    extends _$AddressStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AddressState.loading()';
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
    required TResult Function(Address addressInfo) success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Address addressInfo)? success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Address addressInfo)? success,
    TResult Function(ErrorResponse error)? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AddressState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address addressInfo});

  $AddressCopyWith<$Res> get addressInfo;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressInfo = null,
  }) {
    return _then(_$SuccessImpl(
      null == addressInfo
          ? _value.addressInfo
          : addressInfo // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get addressInfo {
    return $AddressCopyWith<$Res>(_value.addressInfo, (value) {
      return _then(_value.copyWith(addressInfo: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.addressInfo);

  @override
  final Address addressInfo;

  @override
  String toString() {
    return 'AddressState.success(addressInfo: $addressInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.addressInfo, addressInfo) ||
                other.addressInfo == addressInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Address addressInfo) success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return success(addressInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Address addressInfo)? success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return success?.call(addressInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Address addressInfo)? success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(addressInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddressState {
  const factory _Success(final Address addressInfo) = _$SuccessImpl;

  Address get addressInfo;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponse error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'AddressState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Address addressInfo) success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Address addressInfo)? success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Address addressInfo)? success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddressState {
  const factory _Error(final ErrorResponse error) = _$ErrorImpl;

  ErrorResponse get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
