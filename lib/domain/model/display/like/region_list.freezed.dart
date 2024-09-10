// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionListModel _$RegionListModelFromJson(Map<String, dynamic> json) {
  return _RegionListModel.fromJson(json);
}

/// @nodoc
mixin _$RegionListModel {
  List<RegionModel> get addrList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionListModelCopyWith<RegionListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionListModelCopyWith<$Res> {
  factory $RegionListModelCopyWith(
          RegionListModel value, $Res Function(RegionListModel) then) =
      _$RegionListModelCopyWithImpl<$Res, RegionListModel>;
  @useResult
  $Res call({List<RegionModel> addrList});
}

/// @nodoc
class _$RegionListModelCopyWithImpl<$Res, $Val extends RegionListModel>
    implements $RegionListModelCopyWith<$Res> {
  _$RegionListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addrList = null,
  }) {
    return _then(_value.copyWith(
      addrList: null == addrList
          ? _value.addrList
          : addrList // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionListModelImplCopyWith<$Res>
    implements $RegionListModelCopyWith<$Res> {
  factory _$$RegionListModelImplCopyWith(_$RegionListModelImpl value,
          $Res Function(_$RegionListModelImpl) then) =
      __$$RegionListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RegionModel> addrList});
}

/// @nodoc
class __$$RegionListModelImplCopyWithImpl<$Res>
    extends _$RegionListModelCopyWithImpl<$Res, _$RegionListModelImpl>
    implements _$$RegionListModelImplCopyWith<$Res> {
  __$$RegionListModelImplCopyWithImpl(
      _$RegionListModelImpl _value, $Res Function(_$RegionListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addrList = null,
  }) {
    return _then(_$RegionListModelImpl(
      addrList: null == addrList
          ? _value._addrList
          : addrList // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionListModelImpl implements _RegionListModel {
  const _$RegionListModelImpl({required final List<RegionModel> addrList})
      : _addrList = addrList;

  factory _$RegionListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionListModelImplFromJson(json);

  final List<RegionModel> _addrList;
  @override
  List<RegionModel> get addrList {
    if (_addrList is EqualUnmodifiableListView) return _addrList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addrList);
  }

  @override
  String toString() {
    return 'RegionListModel(addrList: $addrList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionListModelImpl &&
            const DeepCollectionEquality().equals(other._addrList, _addrList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_addrList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionListModelImplCopyWith<_$RegionListModelImpl> get copyWith =>
      __$$RegionListModelImplCopyWithImpl<_$RegionListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionListModelImplToJson(
      this,
    );
  }
}

abstract class _RegionListModel implements RegionListModel {
  const factory _RegionListModel({required final List<RegionModel> addrList}) =
      _$RegionListModelImpl;

  factory _RegionListModel.fromJson(Map<String, dynamic> json) =
      _$RegionListModelImpl.fromJson;

  @override
  List<RegionModel> get addrList;
  @override
  @JsonKey(ignore: true)
  _$$RegionListModelImplCopyWith<_$RegionListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
