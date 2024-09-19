// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerEventCopyWith<$Res> {
  factory $PlannerEventCopyWith(
          PlannerEvent value, $Res Function(PlannerEvent) then) =
      _$PlannerEventCopyWithImpl<$Res, PlannerEvent>;
}

/// @nodoc
class _$PlannerEventCopyWithImpl<$Res, $Val extends PlannerEvent>
    implements $PlannerEventCopyWith<$Res> {
  _$PlannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckLoginStateImplCopyWith<$Res> {
  factory _$$CheckLoginStateImplCopyWith(_$CheckLoginStateImpl value,
          $Res Function(_$CheckLoginStateImpl) then) =
      __$$CheckLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoginStateImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$CheckLoginStateImpl>
    implements _$$CheckLoginStateImplCopyWith<$Res> {
  __$$CheckLoginStateImplCopyWithImpl(
      _$CheckLoginStateImpl _value, $Res Function(_$CheckLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLoginStateImpl implements CheckLoginState {
  const _$CheckLoginStateImpl();

  @override
  String toString() {
    return 'PlannerEvent.checkLoginState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return checkLoginState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return checkLoginState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (checkLoginState != null) {
      return checkLoginState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return checkLoginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return checkLoginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (checkLoginState != null) {
      return checkLoginState(this);
    }
    return orElse();
  }
}

abstract class CheckLoginState implements PlannerEvent {
  const factory CheckLoginState() = _$CheckLoginStateImpl;
}

/// @nodoc
abstract class _$$GetPlannerListEventImplCopyWith<$Res> {
  factory _$$GetPlannerListEventImplCopyWith(_$GetPlannerListEventImpl value,
          $Res Function(_$GetPlannerListEventImpl) then) =
      __$$GetPlannerListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int plannerIndex, int pageIndex});
}

/// @nodoc
class __$$GetPlannerListEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$GetPlannerListEventImpl>
    implements _$$GetPlannerListEventImplCopyWith<$Res> {
  __$$GetPlannerListEventImplCopyWithImpl(_$GetPlannerListEventImpl _value,
      $Res Function(_$GetPlannerListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerIndex = null,
    Object? pageIndex = null,
  }) {
    return _then(_$GetPlannerListEventImpl(
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPlannerListEventImpl implements GetPlannerListEvent {
  const _$GetPlannerListEventImpl(this.plannerIndex, this.pageIndex);

  @override
  final int plannerIndex;
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'PlannerEvent.getPlannerList(plannerIndex: $plannerIndex, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlannerListEventImpl &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plannerIndex, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlannerListEventImplCopyWith<_$GetPlannerListEventImpl> get copyWith =>
      __$$GetPlannerListEventImplCopyWithImpl<_$GetPlannerListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return getPlannerList(plannerIndex, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return getPlannerList?.call(plannerIndex, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (getPlannerList != null) {
      return getPlannerList(plannerIndex, pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return getPlannerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return getPlannerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (getPlannerList != null) {
      return getPlannerList(this);
    }
    return orElse();
  }
}

abstract class GetPlannerListEvent implements PlannerEvent {
  const factory GetPlannerListEvent(
      final int plannerIndex, final int pageIndex) = _$GetPlannerListEventImpl;

  int get plannerIndex;
  int get pageIndex;
  @JsonKey(ignore: true)
  _$$GetPlannerListEventImplCopyWith<_$GetPlannerListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPlannerEventImplCopyWith<$Res> {
  factory _$$AddPlannerEventImplCopyWith(_$AddPlannerEventImpl value,
          $Res Function(_$AddPlannerEventImpl) then) =
      __$$AddPlannerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Planner plannerList});

  $PlannerCopyWith<$Res> get plannerList;
}

/// @nodoc
class __$$AddPlannerEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$AddPlannerEventImpl>
    implements _$$AddPlannerEventImplCopyWith<$Res> {
  __$$AddPlannerEventImplCopyWithImpl(
      _$AddPlannerEventImpl _value, $Res Function(_$AddPlannerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerList = null,
  }) {
    return _then(_$AddPlannerEventImpl(
      null == plannerList
          ? _value.plannerList
          : plannerList // ignore: cast_nullable_to_non_nullable
              as Planner,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlannerCopyWith<$Res> get plannerList {
    return $PlannerCopyWith<$Res>(_value.plannerList, (value) {
      return _then(_value.copyWith(plannerList: value));
    });
  }
}

/// @nodoc

class _$AddPlannerEventImpl implements AddPlannerEvent {
  const _$AddPlannerEventImpl(this.plannerList);

  @override
  final Planner plannerList;

  @override
  String toString() {
    return 'PlannerEvent.addPlanner(plannerList: $plannerList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlannerEventImpl &&
            (identical(other.plannerList, plannerList) ||
                other.plannerList == plannerList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plannerList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlannerEventImplCopyWith<_$AddPlannerEventImpl> get copyWith =>
      __$$AddPlannerEventImplCopyWithImpl<_$AddPlannerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return addPlanner(plannerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return addPlanner?.call(plannerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (addPlanner != null) {
      return addPlanner(plannerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return addPlanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return addPlanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (addPlanner != null) {
      return addPlanner(this);
    }
    return orElse();
  }
}

abstract class AddPlannerEvent implements PlannerEvent {
  const factory AddPlannerEvent(final Planner plannerList) =
      _$AddPlannerEventImpl;

  Planner get plannerList;
  @JsonKey(ignore: true)
  _$$AddPlannerEventImplCopyWith<_$AddPlannerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNextPageEventImplCopyWith<$Res> {
  factory _$$AddNextPageEventImplCopyWith(_$AddNextPageEventImpl value,
          $Res Function(_$AddNextPageEventImpl) then) =
      __$$AddNextPageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String plannerId,
      int plannerIndex,
      String location,
      PlannerItem startPlace});

  $PlannerItemCopyWith<$Res> get startPlace;
}

/// @nodoc
class __$$AddNextPageEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$AddNextPageEventImpl>
    implements _$$AddNextPageEventImplCopyWith<$Res> {
  __$$AddNextPageEventImplCopyWithImpl(_$AddNextPageEventImpl _value,
      $Res Function(_$AddNextPageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
    Object? plannerIndex = null,
    Object? location = null,
    Object? startPlace = null,
  }) {
    return _then(_$AddNextPageEventImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      null == startPlace
          ? _value.startPlace
          : startPlace // ignore: cast_nullable_to_non_nullable
              as PlannerItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlannerItemCopyWith<$Res> get startPlace {
    return $PlannerItemCopyWith<$Res>(_value.startPlace, (value) {
      return _then(_value.copyWith(startPlace: value));
    });
  }
}

/// @nodoc

class _$AddNextPageEventImpl implements AddNextPageEvent {
  const _$AddNextPageEventImpl(
      this.plannerId, this.plannerIndex, this.location, this.startPlace);

  @override
  final String plannerId;
  @override
  final int plannerIndex;
  @override
  final String location;
  @override
  final PlannerItem startPlace;

  @override
  String toString() {
    return 'PlannerEvent.addNextPage(plannerId: $plannerId, plannerIndex: $plannerIndex, location: $location, startPlace: $startPlace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNextPageEventImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startPlace, startPlace) ||
                other.startPlace == startPlace));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, plannerId, plannerIndex, location, startPlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNextPageEventImplCopyWith<_$AddNextPageEventImpl> get copyWith =>
      __$$AddNextPageEventImplCopyWithImpl<_$AddNextPageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return addNextPage(plannerId, plannerIndex, location, startPlace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return addNextPage?.call(plannerId, plannerIndex, location, startPlace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (addNextPage != null) {
      return addNextPage(plannerId, plannerIndex, location, startPlace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return addNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return addNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (addNextPage != null) {
      return addNextPage(this);
    }
    return orElse();
  }
}

abstract class AddNextPageEvent implements PlannerEvent {
  const factory AddNextPageEvent(
      final String plannerId,
      final int plannerIndex,
      final String location,
      final PlannerItem startPlace) = _$AddNextPageEventImpl;

  String get plannerId;
  int get plannerIndex;
  String get location;
  PlannerItem get startPlace;
  @JsonKey(ignore: true)
  _$$AddNextPageEventImplCopyWith<_$AddNextPageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPlaceEventImplCopyWith<$Res> {
  factory _$$AddPlaceEventImplCopyWith(
          _$AddPlaceEventImpl value, $Res Function(_$AddPlaceEventImpl) then) =
      __$$AddPlaceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String plannerId, int plannerIndex, int index, PlannerItem plannerList});

  $PlannerItemCopyWith<$Res> get plannerList;
}

/// @nodoc
class __$$AddPlaceEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$AddPlaceEventImpl>
    implements _$$AddPlaceEventImplCopyWith<$Res> {
  __$$AddPlaceEventImplCopyWithImpl(
      _$AddPlaceEventImpl _value, $Res Function(_$AddPlaceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
    Object? plannerIndex = null,
    Object? index = null,
    Object? plannerList = null,
  }) {
    return _then(_$AddPlaceEventImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == plannerList
          ? _value.plannerList
          : plannerList // ignore: cast_nullable_to_non_nullable
              as PlannerItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlannerItemCopyWith<$Res> get plannerList {
    return $PlannerItemCopyWith<$Res>(_value.plannerList, (value) {
      return _then(_value.copyWith(plannerList: value));
    });
  }
}

/// @nodoc

class _$AddPlaceEventImpl implements AddPlaceEvent {
  const _$AddPlaceEventImpl(
      this.plannerId, this.plannerIndex, this.index, this.plannerList);

  @override
  final String plannerId;
  @override
  final int plannerIndex;
  @override
  final int index;
  @override
  final PlannerItem plannerList;

  @override
  String toString() {
    return 'PlannerEvent.addPlace(plannerId: $plannerId, plannerIndex: $plannerIndex, index: $index, plannerList: $plannerList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaceEventImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.plannerList, plannerList) ||
                other.plannerList == plannerList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, plannerId, plannerIndex, index, plannerList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaceEventImplCopyWith<_$AddPlaceEventImpl> get copyWith =>
      __$$AddPlaceEventImplCopyWithImpl<_$AddPlaceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return addPlace(plannerId, plannerIndex, index, plannerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return addPlace?.call(plannerId, plannerIndex, index, plannerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (addPlace != null) {
      return addPlace(plannerId, plannerIndex, index, plannerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return addPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return addPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (addPlace != null) {
      return addPlace(this);
    }
    return orElse();
  }
}

abstract class AddPlaceEvent implements PlannerEvent {
  const factory AddPlaceEvent(final String plannerId, final int plannerIndex,
      final int index, final PlannerItem plannerList) = _$AddPlaceEventImpl;

  String get plannerId;
  int get plannerIndex;
  int get index;
  PlannerItem get plannerList;
  @JsonKey(ignore: true)
  _$$AddPlaceEventImplCopyWith<_$AddPlaceEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedPlannerEventImplCopyWith<$Res> {
  factory _$$SelectedPlannerEventImplCopyWith(_$SelectedPlannerEventImpl value,
          $Res Function(_$SelectedPlannerEventImpl) then) =
      __$$SelectedPlannerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$SelectedPlannerEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$SelectedPlannerEventImpl>
    implements _$$SelectedPlannerEventImplCopyWith<$Res> {
  __$$SelectedPlannerEventImplCopyWithImpl(_$SelectedPlannerEventImpl _value,
      $Res Function(_$SelectedPlannerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$SelectedPlannerEventImpl(
      null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedPlannerEventImpl implements SelectedPlannerEvent {
  const _$SelectedPlannerEventImpl(this.selectedIndex);

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'PlannerEvent.selected(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPlannerEventImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPlannerEventImplCopyWith<_$SelectedPlannerEventImpl>
      get copyWith =>
          __$$SelectedPlannerEventImplCopyWithImpl<_$SelectedPlannerEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return selected(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return selected?.call(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class SelectedPlannerEvent implements PlannerEvent {
  const factory SelectedPlannerEvent(final int selectedIndex) =
      _$SelectedPlannerEventImpl;

  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$SelectedPlannerEventImplCopyWith<_$SelectedPlannerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlannerEventImplCopyWith<$Res> {
  factory _$$DeletePlannerEventImplCopyWith(_$DeletePlannerEventImpl value,
          $Res Function(_$DeletePlannerEventImpl) then) =
      __$$DeletePlannerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String plannerId});
}

/// @nodoc
class __$$DeletePlannerEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$DeletePlannerEventImpl>
    implements _$$DeletePlannerEventImplCopyWith<$Res> {
  __$$DeletePlannerEventImplCopyWithImpl(_$DeletePlannerEventImpl _value,
      $Res Function(_$DeletePlannerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
  }) {
    return _then(_$DeletePlannerEventImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePlannerEventImpl implements DeletePlannerEvent {
  const _$DeletePlannerEventImpl(this.plannerId);

  @override
  final String plannerId;

  @override
  String toString() {
    return 'PlannerEvent.deletePlanner(plannerId: $plannerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlannerEventImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plannerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlannerEventImplCopyWith<_$DeletePlannerEventImpl> get copyWith =>
      __$$DeletePlannerEventImplCopyWithImpl<_$DeletePlannerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return deletePlanner(plannerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return deletePlanner?.call(plannerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (deletePlanner != null) {
      return deletePlanner(plannerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return deletePlanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return deletePlanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (deletePlanner != null) {
      return deletePlanner(this);
    }
    return orElse();
  }
}

abstract class DeletePlannerEvent implements PlannerEvent {
  const factory DeletePlannerEvent(final String plannerId) =
      _$DeletePlannerEventImpl;

  String get plannerId;
  @JsonKey(ignore: true)
  _$$DeletePlannerEventImplCopyWith<_$DeletePlannerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePageEventImplCopyWith<$Res> {
  factory _$$DeletePageEventImplCopyWith(_$DeletePageEventImpl value,
          $Res Function(_$DeletePageEventImpl) then) =
      __$$DeletePageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String plannerId, int plannerIndex, int pageIndex});
}

/// @nodoc
class __$$DeletePageEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$DeletePageEventImpl>
    implements _$$DeletePageEventImplCopyWith<$Res> {
  __$$DeletePageEventImplCopyWithImpl(
      _$DeletePageEventImpl _value, $Res Function(_$DeletePageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
    Object? plannerIndex = null,
    Object? pageIndex = null,
  }) {
    return _then(_$DeletePageEventImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePageEventImpl implements DeletePageEvent {
  const _$DeletePageEventImpl(
      this.plannerId, this.plannerIndex, this.pageIndex);

  @override
  final String plannerId;
  @override
  final int plannerIndex;
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'PlannerEvent.deletePage(plannerId: $plannerId, plannerIndex: $plannerIndex, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePageEventImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, plannerId, plannerIndex, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePageEventImplCopyWith<_$DeletePageEventImpl> get copyWith =>
      __$$DeletePageEventImplCopyWithImpl<_$DeletePageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return deletePage(plannerId, plannerIndex, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return deletePage?.call(plannerId, plannerIndex, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (deletePage != null) {
      return deletePage(plannerId, plannerIndex, pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return deletePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return deletePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (deletePage != null) {
      return deletePage(this);
    }
    return orElse();
  }
}

abstract class DeletePageEvent implements PlannerEvent {
  const factory DeletePageEvent(
          final String plannerId, final int plannerIndex, final int pageIndex) =
      _$DeletePageEventImpl;

  String get plannerId;
  int get plannerIndex;
  int get pageIndex;
  @JsonKey(ignore: true)
  _$$DeletePageEventImplCopyWith<_$DeletePageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlaceEventImplCopyWith<$Res> {
  factory _$$DeletePlaceEventImplCopyWith(_$DeletePlaceEventImpl value,
          $Res Function(_$DeletePlaceEventImpl) then) =
      __$$DeletePlaceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String plannerId, int plannerIndex, int pageIndex, int placeIndex});
}

/// @nodoc
class __$$DeletePlaceEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$DeletePlaceEventImpl>
    implements _$$DeletePlaceEventImplCopyWith<$Res> {
  __$$DeletePlaceEventImplCopyWithImpl(_$DeletePlaceEventImpl _value,
      $Res Function(_$DeletePlaceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
    Object? plannerIndex = null,
    Object? pageIndex = null,
    Object? placeIndex = null,
  }) {
    return _then(_$DeletePlaceEventImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == placeIndex
          ? _value.placeIndex
          : placeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePlaceEventImpl implements DeletePlaceEvent {
  const _$DeletePlaceEventImpl(
      this.plannerId, this.plannerIndex, this.pageIndex, this.placeIndex);

  @override
  final String plannerId;
  @override
  final int plannerIndex;
  @override
  final int pageIndex;
  @override
  final int placeIndex;

  @override
  String toString() {
    return 'PlannerEvent.deletePlace(plannerId: $plannerId, plannerIndex: $plannerIndex, pageIndex: $pageIndex, placeIndex: $placeIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlaceEventImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.placeIndex, placeIndex) ||
                other.placeIndex == placeIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, plannerId, plannerIndex, pageIndex, placeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlaceEventImplCopyWith<_$DeletePlaceEventImpl> get copyWith =>
      __$$DeletePlaceEventImplCopyWithImpl<_$DeletePlaceEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return deletePlace(plannerId, plannerIndex, pageIndex, placeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return deletePlace?.call(plannerId, plannerIndex, pageIndex, placeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(plannerId, plannerIndex, pageIndex, placeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return deletePlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return deletePlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(this);
    }
    return orElse();
  }
}

abstract class DeletePlaceEvent implements PlannerEvent {
  const factory DeletePlaceEvent(final String plannerId, final int plannerIndex,
      final int pageIndex, final int placeIndex) = _$DeletePlaceEventImpl;

  String get plannerId;
  int get plannerIndex;
  int get pageIndex;
  int get placeIndex;
  @JsonKey(ignore: true)
  _$$DeletePlaceEventImplCopyWith<_$DeletePlaceEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStayTimeImplCopyWith<$Res> {
  factory _$$UpdateStayTimeImplCopyWith(_$UpdateStayTimeImpl value,
          $Res Function(_$UpdateStayTimeImpl) then) =
      __$$UpdateStayTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String plannerId,
      int plannerIndex,
      int pageIndex,
      int placeIndex,
      String newStayTime});
}

/// @nodoc
class __$$UpdateStayTimeImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$UpdateStayTimeImpl>
    implements _$$UpdateStayTimeImplCopyWith<$Res> {
  __$$UpdateStayTimeImplCopyWithImpl(
      _$UpdateStayTimeImpl _value, $Res Function(_$UpdateStayTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
    Object? plannerIndex = null,
    Object? pageIndex = null,
    Object? placeIndex = null,
    Object? newStayTime = null,
  }) {
    return _then(_$UpdateStayTimeImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == placeIndex
          ? _value.placeIndex
          : placeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == newStayTime
          ? _value.newStayTime
          : newStayTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStayTimeImpl implements UpdateStayTime {
  const _$UpdateStayTimeImpl(this.plannerId, this.plannerIndex, this.pageIndex,
      this.placeIndex, this.newStayTime);

  @override
  final String plannerId;
  @override
  final int plannerIndex;
  @override
  final int pageIndex;
  @override
  final int placeIndex;
  @override
  final String newStayTime;

  @override
  String toString() {
    return 'PlannerEvent.updateStayTime(plannerId: $plannerId, plannerIndex: $plannerIndex, pageIndex: $pageIndex, placeIndex: $placeIndex, newStayTime: $newStayTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStayTimeImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.placeIndex, placeIndex) ||
                other.placeIndex == placeIndex) &&
            (identical(other.newStayTime, newStayTime) ||
                other.newStayTime == newStayTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, plannerId, plannerIndex, pageIndex, placeIndex, newStayTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStayTimeImplCopyWith<_$UpdateStayTimeImpl> get copyWith =>
      __$$UpdateStayTimeImplCopyWithImpl<_$UpdateStayTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return updateStayTime(
        plannerId, plannerIndex, pageIndex, placeIndex, newStayTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return updateStayTime?.call(
        plannerId, plannerIndex, pageIndex, placeIndex, newStayTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (updateStayTime != null) {
      return updateStayTime(
          plannerId, plannerIndex, pageIndex, placeIndex, newStayTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return updateStayTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return updateStayTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (updateStayTime != null) {
      return updateStayTime(this);
    }
    return orElse();
  }
}

abstract class UpdateStayTime implements PlannerEvent {
  const factory UpdateStayTime(
      final String plannerId,
      final int plannerIndex,
      final int pageIndex,
      final int placeIndex,
      final String newStayTime) = _$UpdateStayTimeImpl;

  String get plannerId;
  int get plannerIndex;
  int get pageIndex;
  int get placeIndex;
  String get newStayTime;
  @JsonKey(ignore: true)
  _$$UpdateStayTimeImplCopyWith<_$UpdateStayTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransportationImplCopyWith<$Res> {
  factory _$$UpdateTransportationImplCopyWith(_$UpdateTransportationImpl value,
          $Res Function(_$UpdateTransportationImpl) then) =
      __$$UpdateTransportationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String plannerId,
      int plannerIndex,
      int pageIndex,
      int placeIndex,
      String transportation,
      String travelTime,
      bool changeStay,
      String newStayTime});
}

/// @nodoc
class __$$UpdateTransportationImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$UpdateTransportationImpl>
    implements _$$UpdateTransportationImplCopyWith<$Res> {
  __$$UpdateTransportationImplCopyWithImpl(_$UpdateTransportationImpl _value,
      $Res Function(_$UpdateTransportationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerId = null,
    Object? plannerIndex = null,
    Object? pageIndex = null,
    Object? placeIndex = null,
    Object? transportation = null,
    Object? travelTime = null,
    Object? changeStay = null,
    Object? newStayTime = null,
  }) {
    return _then(_$UpdateTransportationImpl(
      null == plannerId
          ? _value.plannerId
          : plannerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == placeIndex
          ? _value.placeIndex
          : placeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      null == travelTime
          ? _value.travelTime
          : travelTime // ignore: cast_nullable_to_non_nullable
              as String,
      null == changeStay
          ? _value.changeStay
          : changeStay // ignore: cast_nullable_to_non_nullable
              as bool,
      null == newStayTime
          ? _value.newStayTime
          : newStayTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTransportationImpl implements UpdateTransportation {
  const _$UpdateTransportationImpl(
      this.plannerId,
      this.plannerIndex,
      this.pageIndex,
      this.placeIndex,
      this.transportation,
      this.travelTime,
      this.changeStay,
      this.newStayTime);

  @override
  final String plannerId;
  @override
  final int plannerIndex;
  @override
  final int pageIndex;
  @override
  final int placeIndex;
  @override
  final String transportation;
  @override
  final String travelTime;
  @override
  final bool changeStay;
  @override
  final String newStayTime;

  @override
  String toString() {
    return 'PlannerEvent.updateTransportation(plannerId: $plannerId, plannerIndex: $plannerIndex, pageIndex: $pageIndex, placeIndex: $placeIndex, transportation: $transportation, travelTime: $travelTime, changeStay: $changeStay, newStayTime: $newStayTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransportationImpl &&
            (identical(other.plannerId, plannerId) ||
                other.plannerId == plannerId) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.placeIndex, placeIndex) ||
                other.placeIndex == placeIndex) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.travelTime, travelTime) ||
                other.travelTime == travelTime) &&
            (identical(other.changeStay, changeStay) ||
                other.changeStay == changeStay) &&
            (identical(other.newStayTime, newStayTime) ||
                other.newStayTime == newStayTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      plannerId,
      plannerIndex,
      pageIndex,
      placeIndex,
      transportation,
      travelTime,
      changeStay,
      newStayTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransportationImplCopyWith<_$UpdateTransportationImpl>
      get copyWith =>
          __$$UpdateTransportationImplCopyWithImpl<_$UpdateTransportationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginState,
    required TResult Function(int plannerIndex, int pageIndex) getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(String plannerId, int plannerIndex,
            String location, PlannerItem startPlace)
        addNextPage,
    required TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)
        addPlace,
    required TResult Function(int selectedIndex) selected,
    required TResult Function(String plannerId) deletePlanner,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex)
        deletePage,
    required TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)
        deletePlace,
    required TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)
        updateStayTime,
    required TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)
        updateTransportation,
  }) {
    return updateTransportation(plannerId, plannerIndex, pageIndex, placeIndex,
        transportation, travelTime, changeStay, newStayTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginState,
    TResult? Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult? Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult? Function(int selectedIndex)? selected,
    TResult? Function(String plannerId)? deletePlanner,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult? Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult? Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult? Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
  }) {
    return updateTransportation?.call(plannerId, plannerIndex, pageIndex,
        placeIndex, transportation, travelTime, changeStay, newStayTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginState,
    TResult Function(int plannerIndex, int pageIndex)? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(String plannerId, int plannerIndex, String location,
            PlannerItem startPlace)?
        addNextPage,
    TResult Function(String plannerId, int plannerIndex, int index,
            PlannerItem plannerList)?
        addPlace,
    TResult Function(int selectedIndex)? selected,
    TResult Function(String plannerId)? deletePlanner,
    TResult Function(String plannerId, int plannerIndex, int pageIndex)?
        deletePage,
    TResult Function(
            String plannerId, int plannerIndex, int pageIndex, int placeIndex)?
        deletePlace,
    TResult Function(String plannerId, int plannerIndex, int pageIndex,
            int placeIndex, String newStayTime)?
        updateStayTime,
    TResult Function(
            String plannerId,
            int plannerIndex,
            int pageIndex,
            int placeIndex,
            String transportation,
            String travelTime,
            bool changeStay,
            String newStayTime)?
        updateTransportation,
    required TResult orElse(),
  }) {
    if (updateTransportation != null) {
      return updateTransportation(plannerId, plannerIndex, pageIndex,
          placeIndex, transportation, travelTime, changeStay, newStayTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginState value) checkLoginState,
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(AddNextPageEvent value) addNextPage,
    required TResult Function(AddPlaceEvent value) addPlace,
    required TResult Function(SelectedPlannerEvent value) selected,
    required TResult Function(DeletePlannerEvent value) deletePlanner,
    required TResult Function(DeletePageEvent value) deletePage,
    required TResult Function(DeletePlaceEvent value) deletePlace,
    required TResult Function(UpdateStayTime value) updateStayTime,
    required TResult Function(UpdateTransportation value) updateTransportation,
  }) {
    return updateTransportation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginState value)? checkLoginState,
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(AddNextPageEvent value)? addNextPage,
    TResult? Function(AddPlaceEvent value)? addPlace,
    TResult? Function(SelectedPlannerEvent value)? selected,
    TResult? Function(DeletePlannerEvent value)? deletePlanner,
    TResult? Function(DeletePageEvent value)? deletePage,
    TResult? Function(DeletePlaceEvent value)? deletePlace,
    TResult? Function(UpdateStayTime value)? updateStayTime,
    TResult? Function(UpdateTransportation value)? updateTransportation,
  }) {
    return updateTransportation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginState value)? checkLoginState,
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(AddNextPageEvent value)? addNextPage,
    TResult Function(AddPlaceEvent value)? addPlace,
    TResult Function(SelectedPlannerEvent value)? selected,
    TResult Function(DeletePlannerEvent value)? deletePlanner,
    TResult Function(DeletePageEvent value)? deletePage,
    TResult Function(DeletePlaceEvent value)? deletePlace,
    TResult Function(UpdateStayTime value)? updateStayTime,
    TResult Function(UpdateTransportation value)? updateTransportation,
    required TResult orElse(),
  }) {
    if (updateTransportation != null) {
      return updateTransportation(this);
    }
    return orElse();
  }
}

abstract class UpdateTransportation implements PlannerEvent {
  const factory UpdateTransportation(
      final String plannerId,
      final int plannerIndex,
      final int pageIndex,
      final int placeIndex,
      final String transportation,
      final String travelTime,
      final bool changeStay,
      final String newStayTime) = _$UpdateTransportationImpl;

  String get plannerId;
  int get plannerIndex;
  int get pageIndex;
  int get placeIndex;
  String get transportation;
  String get travelTime;
  bool get changeStay;
  String get newStayTime;
  @JsonKey(ignore: true)
  _$$UpdateTransportationImplCopyWith<_$UpdateTransportationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)
        success,
    required TResult Function(ErrorResponse error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannerInit value) init,
    required TResult Function(PlannerEmpty value) empty,
    required TResult Function(PlannerLoading value) loading,
    required TResult Function(PlannerSuccess value) success,
    required TResult Function(PlannerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannerInit value)? init,
    TResult? Function(PlannerEmpty value)? empty,
    TResult? Function(PlannerLoading value)? loading,
    TResult? Function(PlannerSuccess value)? success,
    TResult? Function(PlannerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannerInit value)? init,
    TResult Function(PlannerEmpty value)? empty,
    TResult Function(PlannerLoading value)? loading,
    TResult Function(PlannerSuccess value)? success,
    TResult Function(PlannerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerStateCopyWith<$Res> {
  factory $PlannerStateCopyWith(
          PlannerState value, $Res Function(PlannerState) then) =
      _$PlannerStateCopyWithImpl<$Res, PlannerState>;
}

/// @nodoc
class _$PlannerStateCopyWithImpl<$Res, $Val extends PlannerState>
    implements $PlannerStateCopyWith<$Res> {
  _$PlannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlannerInitImplCopyWith<$Res> {
  factory _$$PlannerInitImplCopyWith(
          _$PlannerInitImpl value, $Res Function(_$PlannerInitImpl) then) =
      __$$PlannerInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlannerInitImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$PlannerInitImpl>
    implements _$$PlannerInitImplCopyWith<$Res> {
  __$$PlannerInitImplCopyWithImpl(
      _$PlannerInitImpl _value, $Res Function(_$PlannerInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlannerInitImpl implements PlannerInit {
  const _$PlannerInitImpl();

  @override
  String toString() {
    return 'PlannerState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlannerInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannerInit value) init,
    required TResult Function(PlannerEmpty value) empty,
    required TResult Function(PlannerLoading value) loading,
    required TResult Function(PlannerSuccess value) success,
    required TResult Function(PlannerError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannerInit value)? init,
    TResult? Function(PlannerEmpty value)? empty,
    TResult? Function(PlannerLoading value)? loading,
    TResult? Function(PlannerSuccess value)? success,
    TResult? Function(PlannerError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannerInit value)? init,
    TResult Function(PlannerEmpty value)? empty,
    TResult Function(PlannerLoading value)? loading,
    TResult Function(PlannerSuccess value)? success,
    TResult Function(PlannerError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PlannerInit implements PlannerState {
  const factory PlannerInit() = _$PlannerInitImpl;
}

/// @nodoc
abstract class _$$PlannerEmptyImplCopyWith<$Res> {
  factory _$$PlannerEmptyImplCopyWith(
          _$PlannerEmptyImpl value, $Res Function(_$PlannerEmptyImpl) then) =
      __$$PlannerEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlannerEmptyImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$PlannerEmptyImpl>
    implements _$$PlannerEmptyImplCopyWith<$Res> {
  __$$PlannerEmptyImplCopyWithImpl(
      _$PlannerEmptyImpl _value, $Res Function(_$PlannerEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlannerEmptyImpl implements PlannerEmpty {
  const _$PlannerEmptyImpl();

  @override
  String toString() {
    return 'PlannerState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlannerEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannerInit value) init,
    required TResult Function(PlannerEmpty value) empty,
    required TResult Function(PlannerLoading value) loading,
    required TResult Function(PlannerSuccess value) success,
    required TResult Function(PlannerError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannerInit value)? init,
    TResult? Function(PlannerEmpty value)? empty,
    TResult? Function(PlannerLoading value)? loading,
    TResult? Function(PlannerSuccess value)? success,
    TResult? Function(PlannerError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannerInit value)? init,
    TResult Function(PlannerEmpty value)? empty,
    TResult Function(PlannerLoading value)? loading,
    TResult Function(PlannerSuccess value)? success,
    TResult Function(PlannerError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PlannerEmpty implements PlannerState {
  const factory PlannerEmpty() = _$PlannerEmptyImpl;
}

/// @nodoc
abstract class _$$PlannerLoadingImplCopyWith<$Res> {
  factory _$$PlannerLoadingImplCopyWith(_$PlannerLoadingImpl value,
          $Res Function(_$PlannerLoadingImpl) then) =
      __$$PlannerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlannerLoadingImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$PlannerLoadingImpl>
    implements _$$PlannerLoadingImplCopyWith<$Res> {
  __$$PlannerLoadingImplCopyWithImpl(
      _$PlannerLoadingImpl _value, $Res Function(_$PlannerLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlannerLoadingImpl implements PlannerLoading {
  const _$PlannerLoadingImpl();

  @override
  String toString() {
    return 'PlannerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlannerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
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
    required TResult Function(PlannerInit value) init,
    required TResult Function(PlannerEmpty value) empty,
    required TResult Function(PlannerLoading value) loading,
    required TResult Function(PlannerSuccess value) success,
    required TResult Function(PlannerError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannerInit value)? init,
    TResult? Function(PlannerEmpty value)? empty,
    TResult? Function(PlannerLoading value)? loading,
    TResult? Function(PlannerSuccess value)? success,
    TResult? Function(PlannerError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannerInit value)? init,
    TResult Function(PlannerEmpty value)? empty,
    TResult Function(PlannerLoading value)? loading,
    TResult Function(PlannerSuccess value)? success,
    TResult Function(PlannerError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlannerLoading implements PlannerState {
  const factory PlannerLoading() = _$PlannerLoadingImpl;
}

/// @nodoc
abstract class _$$PlannerSuccessImplCopyWith<$Res> {
  factory _$$PlannerSuccessImplCopyWith(_$PlannerSuccessImpl value,
          $Res Function(_$PlannerSuccessImpl) then) =
      __$$PlannerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Planner> plannerList, int plannerIndex, int pageIndex});
}

/// @nodoc
class __$$PlannerSuccessImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$PlannerSuccessImpl>
    implements _$$PlannerSuccessImplCopyWith<$Res> {
  __$$PlannerSuccessImplCopyWithImpl(
      _$PlannerSuccessImpl _value, $Res Function(_$PlannerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerList = null,
    Object? plannerIndex = null,
    Object? pageIndex = null,
  }) {
    return _then(_$PlannerSuccessImpl(
      null == plannerList
          ? _value._plannerList
          : plannerList // ignore: cast_nullable_to_non_nullable
              as List<Planner>,
      null == plannerIndex
          ? _value.plannerIndex
          : plannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlannerSuccessImpl implements PlannerSuccess {
  const _$PlannerSuccessImpl(
      final List<Planner> plannerList, this.plannerIndex, this.pageIndex)
      : _plannerList = plannerList;

  final List<Planner> _plannerList;
  @override
  List<Planner> get plannerList {
    if (_plannerList is EqualUnmodifiableListView) return _plannerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plannerList);
  }

  @override
  final int plannerIndex;
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'PlannerState.success(plannerList: $plannerList, plannerIndex: $plannerIndex, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._plannerList, _plannerList) &&
            (identical(other.plannerIndex, plannerIndex) ||
                other.plannerIndex == plannerIndex) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_plannerList),
      plannerIndex,
      pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerSuccessImplCopyWith<_$PlannerSuccessImpl> get copyWith =>
      __$$PlannerSuccessImplCopyWithImpl<_$PlannerSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return success(plannerList, plannerIndex, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return success?.call(plannerList, plannerIndex, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(plannerList, plannerIndex, pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannerInit value) init,
    required TResult Function(PlannerEmpty value) empty,
    required TResult Function(PlannerLoading value) loading,
    required TResult Function(PlannerSuccess value) success,
    required TResult Function(PlannerError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannerInit value)? init,
    TResult? Function(PlannerEmpty value)? empty,
    TResult? Function(PlannerLoading value)? loading,
    TResult? Function(PlannerSuccess value)? success,
    TResult? Function(PlannerError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannerInit value)? init,
    TResult Function(PlannerEmpty value)? empty,
    TResult Function(PlannerLoading value)? loading,
    TResult Function(PlannerSuccess value)? success,
    TResult Function(PlannerError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PlannerSuccess implements PlannerState {
  const factory PlannerSuccess(final List<Planner> plannerList,
      final int plannerIndex, final int pageIndex) = _$PlannerSuccessImpl;

  List<Planner> get plannerList;
  int get plannerIndex;
  int get pageIndex;
  @JsonKey(ignore: true)
  _$$PlannerSuccessImplCopyWith<_$PlannerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlannerErrorImplCopyWith<$Res> {
  factory _$$PlannerErrorImplCopyWith(
          _$PlannerErrorImpl value, $Res Function(_$PlannerErrorImpl) then) =
      __$$PlannerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponse error});
}

/// @nodoc
class __$$PlannerErrorImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$PlannerErrorImpl>
    implements _$$PlannerErrorImplCopyWith<$Res> {
  __$$PlannerErrorImplCopyWithImpl(
      _$PlannerErrorImpl _value, $Res Function(_$PlannerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PlannerErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }
}

/// @nodoc

class _$PlannerErrorImpl implements PlannerError {
  const _$PlannerErrorImpl(this.error);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'PlannerState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerErrorImplCopyWith<_$PlannerErrorImpl> get copyWith =>
      __$$PlannerErrorImplCopyWithImpl<_$PlannerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            List<Planner> plannerList, int plannerIndex, int pageIndex)?
        success,
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
    required TResult Function(PlannerInit value) init,
    required TResult Function(PlannerEmpty value) empty,
    required TResult Function(PlannerLoading value) loading,
    required TResult Function(PlannerSuccess value) success,
    required TResult Function(PlannerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannerInit value)? init,
    TResult? Function(PlannerEmpty value)? empty,
    TResult? Function(PlannerLoading value)? loading,
    TResult? Function(PlannerSuccess value)? success,
    TResult? Function(PlannerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannerInit value)? init,
    TResult Function(PlannerEmpty value)? empty,
    TResult Function(PlannerLoading value)? loading,
    TResult Function(PlannerSuccess value)? success,
    TResult Function(PlannerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlannerError implements PlannerState {
  const factory PlannerError(final ErrorResponse error) = _$PlannerErrorImpl;

  ErrorResponse get error;
  @JsonKey(ignore: true)
  _$$PlannerErrorImplCopyWith<_$PlannerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
