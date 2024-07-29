// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kakao_response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KakaoResponseWrapper<T> _$KakaoResponseWrapperFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _KakaoResponseWrapper<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$KakaoResponseWrapper<T> {
  List<T> get documents => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoResponseWrapperCopyWith<T, KakaoResponseWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoResponseWrapperCopyWith<T, $Res> {
  factory $KakaoResponseWrapperCopyWith(KakaoResponseWrapper<T> value,
          $Res Function(KakaoResponseWrapper<T>) then) =
      _$KakaoResponseWrapperCopyWithImpl<T, $Res, KakaoResponseWrapper<T>>;
  @useResult
  $Res call({List<T> documents, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$KakaoResponseWrapperCopyWithImpl<T, $Res,
        $Val extends KakaoResponseWrapper<T>>
    implements $KakaoResponseWrapperCopyWith<T, $Res> {
  _$KakaoResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KakaoResponseWrapperImplCopyWith<T, $Res>
    implements $KakaoResponseWrapperCopyWith<T, $Res> {
  factory _$$KakaoResponseWrapperImplCopyWith(
          _$KakaoResponseWrapperImpl<T> value,
          $Res Function(_$KakaoResponseWrapperImpl<T>) then) =
      __$$KakaoResponseWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> documents, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$KakaoResponseWrapperImplCopyWithImpl<T, $Res>
    extends _$KakaoResponseWrapperCopyWithImpl<T, $Res,
        _$KakaoResponseWrapperImpl<T>>
    implements _$$KakaoResponseWrapperImplCopyWith<T, $Res> {
  __$$KakaoResponseWrapperImplCopyWithImpl(_$KakaoResponseWrapperImpl<T> _value,
      $Res Function(_$KakaoResponseWrapperImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? meta = null,
  }) {
    return _then(_$KakaoResponseWrapperImpl<T>(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$KakaoResponseWrapperImpl<T> implements _KakaoResponseWrapper<T> {
  const _$KakaoResponseWrapperImpl(
      {required final List<T> documents, required this.meta})
      : _documents = documents;

  factory _$KakaoResponseWrapperImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$KakaoResponseWrapperImplFromJson(json, fromJsonT);

  final List<T> _documents;
  @override
  List<T> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'KakaoResponseWrapper<$T>(documents: $documents, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KakaoResponseWrapperImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_documents), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KakaoResponseWrapperImplCopyWith<T, _$KakaoResponseWrapperImpl<T>>
      get copyWith => __$$KakaoResponseWrapperImplCopyWithImpl<T,
          _$KakaoResponseWrapperImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$KakaoResponseWrapperImplToJson<T>(this, toJsonT);
  }
}

abstract class _KakaoResponseWrapper<T> implements KakaoResponseWrapper<T> {
  const factory _KakaoResponseWrapper(
      {required final List<T> documents,
      required final Meta meta}) = _$KakaoResponseWrapperImpl<T>;

  factory _KakaoResponseWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$KakaoResponseWrapperImpl<T>.fromJson;

  @override
  List<T> get documents;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$KakaoResponseWrapperImplCopyWith<T, _$KakaoResponseWrapperImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  bool get is_end => throw _privateConstructorUsedError;
  int get pageable_count => throw _privateConstructorUsedError;
  SameName? get same_name => throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {bool is_end, int pageable_count, SameName? same_name, int total_count});

  $SameNameCopyWith<$Res>? get same_name;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_end = null,
    Object? pageable_count = null,
    Object? same_name = freezed,
    Object? total_count = null,
  }) {
    return _then(_value.copyWith(
      is_end: null == is_end
          ? _value.is_end
          : is_end // ignore: cast_nullable_to_non_nullable
              as bool,
      pageable_count: null == pageable_count
          ? _value.pageable_count
          : pageable_count // ignore: cast_nullable_to_non_nullable
              as int,
      same_name: freezed == same_name
          ? _value.same_name
          : same_name // ignore: cast_nullable_to_non_nullable
              as SameName?,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SameNameCopyWith<$Res>? get same_name {
    if (_value.same_name == null) {
      return null;
    }

    return $SameNameCopyWith<$Res>(_value.same_name!, (value) {
      return _then(_value.copyWith(same_name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool is_end, int pageable_count, SameName? same_name, int total_count});

  @override
  $SameNameCopyWith<$Res>? get same_name;
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_end = null,
    Object? pageable_count = null,
    Object? same_name = freezed,
    Object? total_count = null,
  }) {
    return _then(_$MetaImpl(
      is_end: null == is_end
          ? _value.is_end
          : is_end // ignore: cast_nullable_to_non_nullable
              as bool,
      pageable_count: null == pageable_count
          ? _value.pageable_count
          : pageable_count // ignore: cast_nullable_to_non_nullable
              as int,
      same_name: freezed == same_name
          ? _value.same_name
          : same_name // ignore: cast_nullable_to_non_nullable
              as SameName?,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {required this.is_end,
      required this.pageable_count,
      required this.same_name,
      required this.total_count});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final bool is_end;
  @override
  final int pageable_count;
  @override
  final SameName? same_name;
  @override
  final int total_count;

  @override
  String toString() {
    return 'Meta(is_end: $is_end, pageable_count: $pageable_count, same_name: $same_name, total_count: $total_count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.is_end, is_end) || other.is_end == is_end) &&
            (identical(other.pageable_count, pageable_count) ||
                other.pageable_count == pageable_count) &&
            (identical(other.same_name, same_name) ||
                other.same_name == same_name) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, is_end, pageable_count, same_name, total_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required final bool is_end,
      required final int pageable_count,
      required final SameName? same_name,
      required final int total_count}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  bool get is_end;
  @override
  int get pageable_count;
  @override
  SameName? get same_name;
  @override
  int get total_count;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SameName _$SameNameFromJson(Map<String, dynamic> json) {
  return _SameName.fromJson(json);
}

/// @nodoc
mixin _$SameName {
  String get keyword => throw _privateConstructorUsedError;
  List<String> get region => throw _privateConstructorUsedError;
  String get selected_region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SameNameCopyWith<SameName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SameNameCopyWith<$Res> {
  factory $SameNameCopyWith(SameName value, $Res Function(SameName) then) =
      _$SameNameCopyWithImpl<$Res, SameName>;
  @useResult
  $Res call({String keyword, List<String> region, String selected_region});
}

/// @nodoc
class _$SameNameCopyWithImpl<$Res, $Val extends SameName>
    implements $SameNameCopyWith<$Res> {
  _$SameNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? region = null,
    Object? selected_region = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selected_region: null == selected_region
          ? _value.selected_region
          : selected_region // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SameNameImplCopyWith<$Res>
    implements $SameNameCopyWith<$Res> {
  factory _$$SameNameImplCopyWith(
          _$SameNameImpl value, $Res Function(_$SameNameImpl) then) =
      __$$SameNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, List<String> region, String selected_region});
}

/// @nodoc
class __$$SameNameImplCopyWithImpl<$Res>
    extends _$SameNameCopyWithImpl<$Res, _$SameNameImpl>
    implements _$$SameNameImplCopyWith<$Res> {
  __$$SameNameImplCopyWithImpl(
      _$SameNameImpl _value, $Res Function(_$SameNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? region = null,
    Object? selected_region = null,
  }) {
    return _then(_$SameNameImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value._region
          : region // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selected_region: null == selected_region
          ? _value.selected_region
          : selected_region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SameNameImpl implements _SameName {
  const _$SameNameImpl(
      {required this.keyword,
      required final List<String> region,
      required this.selected_region})
      : _region = region;

  factory _$SameNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$SameNameImplFromJson(json);

  @override
  final String keyword;
  final List<String> _region;
  @override
  List<String> get region {
    if (_region is EqualUnmodifiableListView) return _region;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_region);
  }

  @override
  final String selected_region;

  @override
  String toString() {
    return 'SameName(keyword: $keyword, region: $region, selected_region: $selected_region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SameNameImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._region, _region) &&
            (identical(other.selected_region, selected_region) ||
                other.selected_region == selected_region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword,
      const DeepCollectionEquality().hash(_region), selected_region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SameNameImplCopyWith<_$SameNameImpl> get copyWith =>
      __$$SameNameImplCopyWithImpl<_$SameNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SameNameImplToJson(
      this,
    );
  }
}

abstract class _SameName implements SameName {
  const factory _SameName(
      {required final String keyword,
      required final List<String> region,
      required final String selected_region}) = _$SameNameImpl;

  factory _SameName.fromJson(Map<String, dynamic> json) =
      _$SameNameImpl.fromJson;

  @override
  String get keyword;
  @override
  List<String> get region;
  @override
  String get selected_region;
  @override
  @JsonKey(ignore: true)
  _$$SameNameImplCopyWith<_$SameNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
