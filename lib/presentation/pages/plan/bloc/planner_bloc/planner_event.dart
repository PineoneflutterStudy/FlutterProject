part of 'planner_bloc.dart';

@freezed
class PlannerEvent with _$PlannerEvent {
  const factory PlannerEvent.checkLoginState() = CheckLoginState;
  const factory PlannerEvent.getPlannerList() = GetPlannerListEvent;
  const factory PlannerEvent.addPlanner(Planner plannerList) = AddPlannerEvent;
  const factory PlannerEvent.selected(Planner selectedPlanner) = SelectedPlannerEvent;
  const factory PlannerEvent.deletePlanner(String plannerId) = DeletedPlannerEvent;
}