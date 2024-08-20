part of 'planner_bloc.dart';

@freezed
class PlannerEvent with _$PlannerEvent {
  const factory PlannerEvent.getPlannerList() = GetPlannerListEvent;
  const factory PlannerEvent.addPlanner(Planner plannerList) = AddPlannerEvent;
  const factory PlannerEvent.selected(Planner selectedPlanner) = SelectedPlannerEvent;
}