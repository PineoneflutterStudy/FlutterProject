part of 'planner_bloc.dart';

@freezed
class PlannerState with _$PlannerState {
  const factory PlannerState.loading() = _Loading;
  const factory PlannerState.success(List<Planner> plannerList, Planner selectedPlanner) = _Success;
  const factory PlannerState.error(ErrorResponse error) = _Error;
}