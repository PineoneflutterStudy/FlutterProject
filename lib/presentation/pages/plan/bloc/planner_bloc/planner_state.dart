part of 'planner_bloc.dart';

@freezed
class PlannerState with _$PlannerState {
  const factory PlannerState.init() = PlannerInit;
  const factory PlannerState.empty() = PlannerEmpty;
  const factory PlannerState.loading() = PlannerLoading;
  const factory PlannerState.success(List<Planner> plannerList, int plannerIndex, int pageIndex) = PlannerSuccess;
  const factory PlannerState.error(ErrorResponse error) = PlannerError;
}