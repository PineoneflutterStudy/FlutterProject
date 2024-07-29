// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TourResponseWrapper _$TourResponseWrapperFromJson(Map<String, dynamic> json) {
  return _TourResponseWrapper.fromJson(json);
}

/// @nodoc
mixin _$TourResponseWrapper {
  dynamic get List => throw _privateConstructorUsedError;
  dynamic get numOfRows => throw _privateConstructorUsedError;
  dynamic get pageNo => throw _privateConstructorUsedError;
  dynamic get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourResponseWrapperCopyWith<TourResponseWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourResponseWrapperCopyWith<$Res> {
  factory $TourResponseWrapperCopyWith(
          TourResponseWrapper value, $Res Function(TourResponseWrapper) then) =
      _$TourResponseWrapperCopyWithImpl<$Res, TourResponseWrapper>;
  @useResult
  $Res call(
      {dynamic List, dynamic numOfRows, dynamic pageNo, dynamic totalCount});
}

/// @nodoc
class _$TourResponseWrapperCopyWithImpl<$Res, $Val extends TourResponseWrapper>
    implements $TourResponseWrapperCopyWith<$Res> {
  _$TourResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? List = freezed,
    Object? numOfRows = freezed,
    Object? pageNo = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      List: freezed == List
          ? _value.List
          : List // ignore: cast_nullable_to_non_nullable
              as dynamic,
      numOfRows: freezed == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourResponseWrapperImplCopyWith<$Res>
    implements $TourResponseWrapperCopyWith<$Res> {
  factory _$$TourResponseWrapperImplCopyWith(_$TourResponseWrapperImpl value,
          $Res Function(_$TourResponseWrapperImpl) then) =
      __$$TourResponseWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic List, dynamic numOfRows, dynamic pageNo, dynamic totalCount});
}

/// @nodoc
class __$$TourResponseWrapperImplCopyWithImpl<$Res>
    extends _$TourResponseWrapperCopyWithImpl<$Res, _$TourResponseWrapperImpl>
    implements _$$TourResponseWrapperImplCopyWith<$Res> {
  __$$TourResponseWrapperImplCopyWithImpl(_$TourResponseWrapperImpl _value,
      $Res Function(_$TourResponseWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? List = freezed,
    Object? numOfRows = freezed,
    Object? pageNo = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$TourResponseWrapperImpl(
      List: freezed == List ? _value.List! : List,
      numOfRows: freezed == numOfRows ? _value.numOfRows! : numOfRows,
      pageNo: freezed == pageNo ? _value.pageNo! : pageNo,
      totalCount: freezed == totalCount ? _value.totalCount! : totalCount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourResponseWrapperImpl
    with DiagnosticableTreeMixin
    implements _TourResponseWrapper {
  const _$TourResponseWrapperImpl(
      {this.List = const [],
      this.numOfRows = '0',
      this.pageNo = '0',
      this.totalCount = '0'});

  factory _$TourResponseWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourResponseWrapperImplFromJson(json);

  @override
  @JsonKey()
  final dynamic List;
  @override
  @JsonKey()
  final dynamic numOfRows;
  @override
  @JsonKey()
  final dynamic pageNo;
  @override
  @JsonKey()
  final dynamic totalCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TourResponseWrapper(List: $List, numOfRows: $numOfRows, pageNo: $pageNo, totalCount: $totalCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TourResponseWrapper'))
      ..add(DiagnosticsProperty('List', List))
      ..add(DiagnosticsProperty('numOfRows', numOfRows))
      ..add(DiagnosticsProperty('pageNo', pageNo))
      ..add(DiagnosticsProperty('totalCount', totalCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourResponseWrapperImpl &&
            const DeepCollectionEquality().equals(other.List, List) &&
            const DeepCollectionEquality().equals(other.numOfRows, numOfRows) &&
            const DeepCollectionEquality().equals(other.pageNo, pageNo) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(List),
      const DeepCollectionEquality().hash(numOfRows),
      const DeepCollectionEquality().hash(pageNo),
      const DeepCollectionEquality().hash(totalCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourResponseWrapperImplCopyWith<_$TourResponseWrapperImpl> get copyWith =>
      __$$TourResponseWrapperImplCopyWithImpl<_$TourResponseWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourResponseWrapperImplToJson(
      this,
    );
  }
}

abstract class _TourResponseWrapper implements TourResponseWrapper {
  const factory _TourResponseWrapper(
      {final dynamic List,
      final dynamic numOfRows,
      final dynamic pageNo,
      final dynamic totalCount}) = _$TourResponseWrapperImpl;

  factory _TourResponseWrapper.fromJson(Map<String, dynamic> json) =
      _$TourResponseWrapperImpl.fromJson;

  @override
  dynamic get List;
  @override
  dynamic get numOfRows;
  @override
  dynamic get pageNo;
  @override
  dynamic get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$TourResponseWrapperImplCopyWith<_$TourResponseWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
