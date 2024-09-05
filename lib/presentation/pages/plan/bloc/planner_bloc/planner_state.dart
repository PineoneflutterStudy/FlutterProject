part of 'planner_bloc.dart';

@freezed
class PlannerState with _$PlannerState {
  const factory PlannerState.init(bool isLogined) = Init;
  const factory PlannerState.loading() = Loading;
  const factory PlannerState.success(List<Planner> plannerList, int selectedIndex) = Success;
  const factory PlannerState.error(ErrorResponse error) = Error;
}