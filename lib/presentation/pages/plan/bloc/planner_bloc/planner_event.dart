part of 'planner_bloc.dart';

@freezed
class PlannerEvent with _$PlannerEvent {
  const factory PlannerEvent.checkLoginState() = CheckLoginState;
  const factory PlannerEvent.getPlannerList(int index) = GetPlannerListEvent;
  const factory PlannerEvent.addPlanner(Planner plannerList) = AddPlannerEvent;
  const factory PlannerEvent.addPlannerItem(int PlannerIndex, int index, PlannerItem plannerList) = AddPlannerItemEvent;
  const factory PlannerEvent.selected(int selectedIndex) = SelectedPlannerEvent;
  const factory PlannerEvent.deletePlanner(int plannerIndex) = DeletedPlannerEvent;
}