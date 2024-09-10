part of 'planner_bloc.dart';

@freezed
class PlannerState with _$PlannerState {
  const factory PlannerState.init(bool isLogined) = PlannerInit;
  const factory PlannerState.loading() = PlannerLoading;
  const factory PlannerState.success(List<Planner> plannerList, int selectedIndex) = PlannerSuccess;
  const factory PlannerState.error(ErrorResponse error) = PlannerError;
}