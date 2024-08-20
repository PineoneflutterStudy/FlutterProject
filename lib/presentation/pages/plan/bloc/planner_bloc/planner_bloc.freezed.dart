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
    required TResult Function() getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(Planner selectedPlanner) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(Planner selectedPlanner)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(Planner selectedPlanner)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(SelectedPlannerEvent value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(SelectedPlannerEvent value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(SelectedPlannerEvent value)? selected,
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
abstract class _$$GetPlannerListEventImplCopyWith<$Res> {
  factory _$$GetPlannerListEventImplCopyWith(_$GetPlannerListEventImpl value,
          $Res Function(_$GetPlannerListEventImpl) then) =
      __$$GetPlannerListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlannerListEventImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$GetPlannerListEventImpl>
    implements _$$GetPlannerListEventImplCopyWith<$Res> {
  __$$GetPlannerListEventImplCopyWithImpl(_$GetPlannerListEventImpl _value,
      $Res Function(_$GetPlannerListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlannerListEventImpl implements GetPlannerListEvent {
  const _$GetPlannerListEventImpl();

  @override
  String toString() {
    return 'PlannerEvent.getPlannerList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlannerListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(Planner selectedPlanner) selected,
  }) {
    return getPlannerList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(Planner selectedPlanner)? selected,
  }) {
    return getPlannerList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(Planner selectedPlanner)? selected,
    required TResult orElse(),
  }) {
    if (getPlannerList != null) {
      return getPlannerList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(SelectedPlannerEvent value) selected,
  }) {
    return getPlannerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(SelectedPlannerEvent value)? selected,
  }) {
    return getPlannerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(SelectedPlannerEvent value)? selected,
    required TResult orElse(),
  }) {
    if (getPlannerList != null) {
      return getPlannerList(this);
    }
    return orElse();
  }
}

abstract class GetPlannerListEvent implements PlannerEvent {
  const factory GetPlannerListEvent() = _$GetPlannerListEventImpl;
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
    required TResult Function() getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(Planner selectedPlanner) selected,
  }) {
    return addPlanner(plannerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(Planner selectedPlanner)? selected,
  }) {
    return addPlanner?.call(plannerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(Planner selectedPlanner)? selected,
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
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(SelectedPlannerEvent value) selected,
  }) {
    return addPlanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(SelectedPlannerEvent value)? selected,
  }) {
    return addPlanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(SelectedPlannerEvent value)? selected,
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
abstract class _$$SelectedPlannerEventImplCopyWith<$Res> {
  factory _$$SelectedPlannerEventImplCopyWith(_$SelectedPlannerEventImpl value,
          $Res Function(_$SelectedPlannerEventImpl) then) =
      __$$SelectedPlannerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Planner selectedPlanner});

  $PlannerCopyWith<$Res> get selectedPlanner;
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
    Object? selectedPlanner = null,
  }) {
    return _then(_$SelectedPlannerEventImpl(
      null == selectedPlanner
          ? _value.selectedPlanner
          : selectedPlanner // ignore: cast_nullable_to_non_nullable
              as Planner,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlannerCopyWith<$Res> get selectedPlanner {
    return $PlannerCopyWith<$Res>(_value.selectedPlanner, (value) {
      return _then(_value.copyWith(selectedPlanner: value));
    });
  }
}

/// @nodoc

class _$SelectedPlannerEventImpl implements SelectedPlannerEvent {
  const _$SelectedPlannerEventImpl(this.selectedPlanner);

  @override
  final Planner selectedPlanner;

  @override
  String toString() {
    return 'PlannerEvent.selected(selectedPlanner: $selectedPlanner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPlannerEventImpl &&
            (identical(other.selectedPlanner, selectedPlanner) ||
                other.selectedPlanner == selectedPlanner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPlanner);

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
    required TResult Function() getPlannerList,
    required TResult Function(Planner plannerList) addPlanner,
    required TResult Function(Planner selectedPlanner) selected,
  }) {
    return selected(selectedPlanner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlannerList,
    TResult? Function(Planner plannerList)? addPlanner,
    TResult? Function(Planner selectedPlanner)? selected,
  }) {
    return selected?.call(selectedPlanner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlannerList,
    TResult Function(Planner plannerList)? addPlanner,
    TResult Function(Planner selectedPlanner)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(selectedPlanner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlannerListEvent value) getPlannerList,
    required TResult Function(AddPlannerEvent value) addPlanner,
    required TResult Function(SelectedPlannerEvent value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlannerListEvent value)? getPlannerList,
    TResult? Function(AddPlannerEvent value)? addPlanner,
    TResult? Function(SelectedPlannerEvent value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlannerListEvent value)? getPlannerList,
    TResult Function(AddPlannerEvent value)? addPlanner,
    TResult Function(SelectedPlannerEvent value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class SelectedPlannerEvent implements PlannerEvent {
  const factory SelectedPlannerEvent(final Planner selectedPlanner) =
      _$SelectedPlannerEventImpl;

  Planner get selectedPlanner;
  @JsonKey(ignore: true)
  _$$SelectedPlannerEventImplCopyWith<_$SelectedPlannerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, Planner selectedPlanner)
        success,
    required TResult Function(ErrorResponse error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Planner> plannerList, Planner selectedPlanner)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Planner> plannerList, Planner selectedPlanner)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
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
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PlannerState.loading()';
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
    required TResult Function(
            List<Planner> plannerList, Planner selectedPlanner)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Planner> plannerList, Planner selectedPlanner)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Planner> plannerList, Planner selectedPlanner)?
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
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

abstract class _Loading implements PlannerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Planner> plannerList, Planner selectedPlanner});

  $PlannerCopyWith<$Res> get selectedPlanner;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PlannerStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plannerList = null,
    Object? selectedPlanner = null,
  }) {
    return _then(_$SuccessImpl(
      null == plannerList
          ? _value._plannerList
          : plannerList // ignore: cast_nullable_to_non_nullable
              as List<Planner>,
      null == selectedPlanner
          ? _value.selectedPlanner
          : selectedPlanner // ignore: cast_nullable_to_non_nullable
              as Planner,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlannerCopyWith<$Res> get selectedPlanner {
    return $PlannerCopyWith<$Res>(_value.selectedPlanner, (value) {
      return _then(_value.copyWith(selectedPlanner: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Planner> plannerList, this.selectedPlanner)
      : _plannerList = plannerList;

  final List<Planner> _plannerList;
  @override
  List<Planner> get plannerList {
    if (_plannerList is EqualUnmodifiableListView) return _plannerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plannerList);
  }

  @override
  final Planner selectedPlanner;

  @override
  String toString() {
    return 'PlannerState.success(plannerList: $plannerList, selectedPlanner: $selectedPlanner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._plannerList, _plannerList) &&
            (identical(other.selectedPlanner, selectedPlanner) ||
                other.selectedPlanner == selectedPlanner));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_plannerList), selectedPlanner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Planner> plannerList, Planner selectedPlanner)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return success(plannerList, selectedPlanner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Planner> plannerList, Planner selectedPlanner)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return success?.call(plannerList, selectedPlanner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Planner> plannerList, Planner selectedPlanner)?
        success,
    TResult Function(ErrorResponse error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(plannerList, selectedPlanner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
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

abstract class _Success implements PlannerState {
  const factory _Success(
          final List<Planner> plannerList, final Planner selectedPlanner) =
      _$SuccessImpl;

  List<Planner> get plannerList;
  Planner get selectedPlanner;
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
    extends _$PlannerStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'PlannerState.error(error: $error)';
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
    required TResult Function(
            List<Planner> plannerList, Planner selectedPlanner)
        success,
    required TResult Function(ErrorResponse error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Planner> plannerList, Planner selectedPlanner)?
        success,
    TResult? Function(ErrorResponse error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Planner> plannerList, Planner selectedPlanner)?
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
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

abstract class _Error implements PlannerState {
  const factory _Error(final ErrorResponse error) = _$ErrorImpl;

  ErrorResponse get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
