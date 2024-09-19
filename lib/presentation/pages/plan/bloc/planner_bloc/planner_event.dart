part of 'planner_bloc.dart';

@freezed
class PlannerEvent with _$PlannerEvent {
  const factory PlannerEvent.checkLoginState() = CheckLoginState;
  const factory PlannerEvent.getPlannerList(int plannerIndex, int pageIndex) = GetPlannerListEvent;
  const factory PlannerEvent.addPlanner(Planner plannerList) = AddPlannerEvent;
  const factory PlannerEvent.addNextPage(String plannerId, int plannerIndex, String location, PlannerItem startPlace) = AddNextPageEvent;
  const factory PlannerEvent.addPlace(String plannerId, int plannerIndex, int index, PlannerItem plannerList) = AddPlaceEvent;
  const factory PlannerEvent.selected(int selectedIndex) = SelectedPlannerEvent;
  const factory PlannerEvent.deletePlanner(String plannerId) = DeletePlannerEvent;
  const factory PlannerEvent.deletePage(String plannerId, int plannerIndex, int pageIndex) = DeletePageEvent;
  const factory PlannerEvent.deletePlace(String plannerId, int plannerIndex, int pageIndex, int placeIndex) = DeletePlaceEvent;
  const factory PlannerEvent.updateStayTime(String plannerId, int plannerIndex, int pageIndex, int placeIndex, String newStayTime) = UpdateStayTime;
  const factory PlannerEvent.updateTransportation(String plannerId, int plannerIndex, int pageIndex, int placeIndex, String transportation, String travelTime, bool changeStay, String newStayTime) = UpdateTransportation;
}