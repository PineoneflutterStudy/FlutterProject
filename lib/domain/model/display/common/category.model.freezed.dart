// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get ctgrId => throw _privateConstructorUsedError;
  String get ctgrName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String ctgrId, String ctgrName});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ctgrId = null,
    Object? ctgrName = null,
  }) {
    return _then(_value.copyWith(
      ctgrId: null == ctgrId
          ? _value.ctgrId
          : ctgrId // ignore: cast_nullable_to_non_nullable
              as String,
      ctgrName: null == ctgrName
          ? _value.ctgrName
          : ctgrName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ctgrId, String ctgrName});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ctgrId = null,
    Object? ctgrName = null,
  }) {
    return _then(_$CategoryImpl(
      ctgrId: null == ctgrId
          ? _value.ctgrId
          : ctgrId // ignore: cast_nullable_to_non_nullable
              as String,
      ctgrName: null == ctgrName
          ? _value.ctgrName
          : ctgrName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl with DiagnosticableTreeMixin implements _Category {
  const _$CategoryImpl({required this.ctgrId, required this.ctgrName});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String ctgrId;
  @override
  final String ctgrName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(ctgrId: $ctgrId, ctgrName: $ctgrName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('ctgrId', ctgrId))
      ..add(DiagnosticsProperty('ctgrName', ctgrName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.ctgrId, ctgrId) || other.ctgrId == ctgrId) &&
            (identical(other.ctgrName, ctgrName) ||
                other.ctgrName == ctgrName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ctgrId, ctgrName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String ctgrId,
      required final String ctgrName}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get ctgrId;
  @override
  String get ctgrName;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
