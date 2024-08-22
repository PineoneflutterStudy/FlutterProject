// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccessTokenDto _$AccessTokenDtoFromJson(Map<String, dynamic> json) {
  return _AccessTokenDto.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenDto {
  String? get id => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;
  String? get errMsg => throw _privateConstructorUsedError;
  int? get errCd => throw _privateConstructorUsedError;
  String? get trErr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenDtoCopyWith<AccessTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenDtoCopyWith<$Res> {
  factory $AccessTokenDtoCopyWith(
          AccessTokenDto value, $Res Function(AccessTokenDto) then) =
      _$AccessTokenDtoCopyWithImpl<$Res, AccessTokenDto>;
  @useResult
  $Res call(
      {String? id, Result? result, String? errMsg, int? errCd, String? trErr});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AccessTokenDtoCopyWithImpl<$Res, $Val extends AccessTokenDto>
    implements $AccessTokenDtoCopyWith<$Res> {
  _$AccessTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
    Object? errMsg = freezed,
    Object? errCd = freezed,
    Object? trErr = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
      errMsg: freezed == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      errCd: freezed == errCd
          ? _value.errCd
          : errCd // ignore: cast_nullable_to_non_nullable
              as int?,
      trErr: freezed == trErr
          ? _value.trErr
          : trErr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccessTokenDtoImplCopyWith<$Res>
    implements $AccessTokenDtoCopyWith<$Res> {
  factory _$$AccessTokenDtoImplCopyWith(_$AccessTokenDtoImpl value,
          $Res Function(_$AccessTokenDtoImpl) then) =
      __$$AccessTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, Result? result, String? errMsg, int? errCd, String? trErr});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AccessTokenDtoImplCopyWithImpl<$Res>
    extends _$AccessTokenDtoCopyWithImpl<$Res, _$AccessTokenDtoImpl>
    implements _$$AccessTokenDtoImplCopyWith<$Res> {
  __$$AccessTokenDtoImplCopyWithImpl(
      _$AccessTokenDtoImpl _value, $Res Function(_$AccessTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
    Object? errMsg = freezed,
    Object? errCd = freezed,
    Object? trErr = freezed,
  }) {
    return _then(_$AccessTokenDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
      errMsg: freezed == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      errCd: freezed == errCd
          ? _value.errCd
          : errCd // ignore: cast_nullable_to_non_nullable
              as int?,
      trErr: freezed == trErr
          ? _value.trErr
          : trErr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenDtoImpl implements _AccessTokenDto {
  const _$AccessTokenDtoImpl(
      {required this.id,
      required this.result,
      required this.errMsg,
      required this.errCd,
      required this.trErr});

  factory _$AccessTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final Result? result;
  @override
  final String? errMsg;
  @override
  final int? errCd;
  @override
  final String? trErr;

  @override
  String toString() {
    return 'AccessTokenDto(id: $id, result: $result, errMsg: $errMsg, errCd: $errCd, trErr: $trErr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.errCd, errCd) || other.errCd == errCd) &&
            (identical(other.trErr, trErr) || other.trErr == trErr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, result, errMsg, errCd, trErr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenDtoImplCopyWith<_$AccessTokenDtoImpl> get copyWith =>
      __$$AccessTokenDtoImplCopyWithImpl<_$AccessTokenDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _AccessTokenDto implements AccessTokenDto {
  const factory _AccessTokenDto(
      {required final String? id,
      required final Result? result,
      required final String? errMsg,
      required final int? errCd,
      required final String? trErr}) = _$AccessTokenDtoImpl;

  factory _AccessTokenDto.fromJson(Map<String, dynamic> json) =
      _$AccessTokenDtoImpl.fromJson;

  @override
  String? get id;
  @override
  Result? get result;
  @override
  String? get errMsg;
  @override
  int? get errCd;
  @override
  String? get trErr;
  @override
  @JsonKey(ignore: true)
  _$$AccessTokenDtoImplCopyWith<_$AccessTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get accessTimeout => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({String? accessTimeout, String? accessToken});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessTimeout = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessTimeout: freezed == accessTimeout
          ? _value.accessTimeout
          : accessTimeout // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessTimeout, String? accessToken});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessTimeout = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$ResultImpl(
      accessTimeout: freezed == accessTimeout
          ? _value.accessTimeout
          : accessTimeout // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required this.accessTimeout, required this.accessToken});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? accessTimeout;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'Result(accessTimeout: $accessTimeout, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.accessTimeout, accessTimeout) ||
                other.accessTimeout == accessTimeout) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessTimeout, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String? accessTimeout,
      required final String? accessToken}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get accessTimeout;
  @override
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
