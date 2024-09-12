part of 'planner_bloc.dart';

@freezed
class PlannerEvent with _$PlannerEvent {
  const factory PlannerEvent.checkLoginState() = CheckLoginState;
  const factory PlannerEvent.getPlannerList(int plannerIndex, int pageIndex) = GetPlannerListEvent;
  const factory PlannerEvent.addPlanner(Planner plannerList) = AddPlannerEvent;
  const factory PlannerEvent.addNextPage(int plannerIndex, String location, PlannerItem startPlace) = AddNextPageEvent;
  const factory PlannerEvent.addPlannerItem(int plannerIndex, int index, PlannerItem plannerList) = AddPlannerItemEvent;
  const factory PlannerEvent.selected(int selectedIndex) = SelectedPlannerEvent;
  const factory PlannerEvent.deletePlanner(int plannerIndex) = DeletePlannerEvent;
  const factory PlannerEvent.deletePage(int plannerIndex, int pageIndex) = DeletePageEvent;
  const factory PlannerEvent.deletePlace(int plannerIndex, int pageIndex, int placeIndex) = DeletePlaceEvent;
  const factory PlannerEvent.updateTransportation(int plannerIndex, int pageIndex, int placeIndex, String transportation, String travelTime) = UpdateTransportation;
}