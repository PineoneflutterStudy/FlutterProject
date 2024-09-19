import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/plan/planner.model.dart';
import '../../utils/plan_util.dart';

part 'planner_event.dart';

part 'planner_state.dart';

part 'planner_bloc.freezed.dart';

class PlannerBloc extends Bloc<PlannerEvent, PlannerState> with PlanUtil {
  final firestore = FirebaseFirestoreUtil();
  final auth = FirebaseAuthUtil();

  PlannerBloc() : super(const PlannerState.loading()) {
    on<PlannerEvent>((event, emit) async {
      await event.when(
        checkLoginState: () async => await _onCheckLoginState(emit),
        getPlannerList: (plannerIndex, pageIndex) async => await _onGetPlannerList(emit, plannerIndex, pageIndex),
        addPlanner: (planner) async => await _onAddPlanner(emit, planner),
        addNextPage: (plannerId,plannerIndex, location, startPlace) async => await _onAddNextPage(emit, plannerId, plannerIndex, location, startPlace),
        addPlace: (plannerId,plannerIndex, index, plannerItem) async => await _onAddPlace(emit, plannerId, plannerIndex, index, plannerItem),
        selected: (selectedIndex) async => await _onUpdateSelected(emit, selectedIndex),
        deletePlanner: (plannerId) async => await _onDeletePlanner(emit, plannerId),
        deletePage:(plannerId, plannerIndex, pageIndex) async => await _onDeletePage(emit, plannerId, plannerIndex, pageIndex),
        deletePlace: (plannerId, plannerIndex, pageIndex, placeIndex) async => await _onDeletePlace(emit, plannerId, plannerIndex, pageIndex, placeIndex),
        updateStayTime: (plannerId, plannerIndex, pageIndex, placeIndex, newStayTime) async => await _onUpdatePlaceStayTime(emit, plannerId, plannerIndex, pageIndex, placeIndex, newStayTime),
        updateTransportation: (plannerId, plannerIndex,pageIndex,placeIndex,transportation,travelTime, changeStay, stayTime) async => await _onUpdatePlaceTransportation(emit, plannerId, plannerIndex, pageIndex, placeIndex, transportation, travelTime, changeStay, stayTime),
      );
    });
  }

  /// 로그인체크
  Future<void> _onCheckLoginState(Emitter<PlannerState> emit) async {
    bool isLoggedIn = await auth.isLoggedIn();

    if (isLoggedIn) {
      await _onGetPlannerList(emit,0,0);
    } else {
      emit(PlannerState.init());
    }
  }

  /// firestore - PlannerList 불러오기
  Future<void> _onGetPlannerList(Emitter<PlannerState> emit, int plannerIndex, int pageIndex) async {
    try {
      final plannerList = await firestore.getDocumentsFromCollectionMapperData(DBKey.DB_PLANNER, (json) => Planner.fromJson(json));
      if (plannerList != null && plannerList.isNotEmpty) {
        emit(PlannerState.success(plannerList, plannerIndex,pageIndex));
      } else {
        emit(PlannerState.empty());
      }
    } catch (error) {
      emit(PlannerState.error(ErrorResponse(status: '1', code: '9999', message: '플래너 목록을 불러오는데 실패하였습니다.\n앱을 다시 실행해주세요.')));
    }
  }

  /// 여행계획 추가
  // 카테고리에서 추가하는 경우, 처음 여행계획 추가하는 경우
  Future<void> _onAddPlanner(Emitter<PlannerState> emit, Planner newPlanner) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, newPlanner.planner_id);
    if (plannerDocRef != null) {
      await firestore.setDocument(plannerDocRef, newPlanner.toJson());
    } else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
    state.maybeWhen(success: (plannerList, selected, pageIndex) {
      // 기존 플래너 목록에 새 플래너를 추가
      final updatedList = List<Planner>.from(plannerList)..add(newPlanner);
      emit(PlannerState.success(updatedList, updatedList.length-1,0));
    }, orElse: () {
      // 플래너 목록이 없을 때
      emit(PlannerState.success([newPlanner], 0,0));
    });
  }

  /// 여행계획 다음날 계획 추가
  Future<void> _onAddNextPage(Emitter<PlannerState> emit, String plannerId, int plannerIndex, String location, PlannerItem startPlace) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (plannerDocRef != null) {
      Map<String, dynamic>? plannerData = await firestore.getDocumentDataFromRef(plannerDocRef);

      if (plannerData != null) {
        List<dynamic> pages = plannerData['planner_page_list'];

        Map<String, dynamic> newPage = {
          'location': location,
          'page_item_list': [startPlace.toJson()]
        };

        pages.add(newPage);

        await plannerDocRef.update({'planner_page_list': pages});
        await _onGetPlannerList(emit,plannerIndex, pages.length-1);
      } else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }
  }

  /// 계획에 장소 추가하기
  Future<void> _onAddPlace(Emitter<PlannerState> emit, String plannerId, int plannerIndex, int pageIndex, PlannerItem newPlannerItem) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (plannerDocRef != null) {
      Map<String, dynamic>? plannerData = await firestore.getDocumentDataFromRef(plannerDocRef);

      if (plannerData != null) {
        List<dynamic> pages = plannerData['planner_page_list'];

        if (pages.length > pageIndex) {
          var page = pages[pageIndex] as Map<String, dynamic>;
          List<dynamic> pageItemList = page['page_item_list'];
          pageItemList.add(newPlannerItem.toJson());
          pages[pageIndex]['page_item_list'] = pageItemList;

          await plannerDocRef.update({'planner_page_list': pages});
          await _onGetPlannerList(emit,plannerIndex,pageIndex);
        } else {
          CustomLogger.logger.e('해당 페이지 인덱스가 유효하지 않습니다.');
        }
      } else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }
  }

  /// 현재 Planner 삭제 > 첫번째 item으로 포커스
  Future<void> _onDeletePlanner(Emitter<PlannerState> emit, String plannerId) async {
    var docRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (docRef != null) {
      firestore.deleteDocument(docRef);
      await _onGetPlannerList(emit,0,0);
    } else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
  }

  /// 현재 page 삭제 > 첫번째 Page로 포커스
  Future<void> _onDeletePage(Emitter<PlannerState> emit, String plannerId, int plannerIndex, int pageIndex) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (plannerDocRef != null) {
      Map<String, dynamic>? plannerData = await firestore.getDocumentDataFromRef(plannerDocRef);

      if (plannerData != null) {
        List<dynamic> pages = plannerData['planner_page_list'];
        if (pageIndex >= 0 && pageIndex < pages.length) {
          pages.removeAt(pageIndex);

          await plannerDocRef.update({'planner_page_list': pages});
          await _onGetPlannerList(emit,plannerIndex, 0);
        } else {
          CustomLogger.logger.e('해당 페이지 인덱스가 유효하지 않습니다.');
        }
      } else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }
  }

  Future<void> _onDeletePlace(Emitter<PlannerState> emit, String plannerId, int plannerIndex, int pageIndex, int placeIndex) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (plannerDocRef != null) {
      Map<String, dynamic>? plannerData = await firestore.getDocumentDataFromRef(plannerDocRef);
      if (plannerData != null) {
        List plannerPages = plannerData['planner_page_list'];
        if (plannerPages.length > pageIndex) {
          List pageItems = plannerPages[pageIndex]['page_item_list'];
          if (pageItems.length > placeIndex) {
            var nextPlace = placeIndex + 1 < pageItems.length ? pageItems[placeIndex + 1] : null;
            var prevPlace = placeIndex > 0 ? pageItems[placeIndex - 1] : null;

            if (nextPlace != null && prevPlace != null) {
              var startLatitude = double.parse(prevPlace['cur_address_info']['y']);
              var startLongitude = double.parse(prevPlace['cur_address_info']['x']);
              var endLatitude = double.parse(nextPlace['cur_address_info']['y']);
              var endLongitude = double.parse(nextPlace['cur_address_info']['x']);
              var distance = Geolocator.distanceBetween(startLatitude, startLongitude, endLatitude, endLongitude).round().toString();
              var travelTime = nextPlace['transportation'] == 'walk'
                  ? getWalkTravelTime(distance)
                  : getCarTravelTime(distance);

              nextPlace['distance'] = distance;
              nextPlace['travel_time'] = travelTime;
              nextPlace['prev_address_info'] = prevPlace['cur_address_info'];
            }

            pageItems.removeAt(placeIndex);
            updateFollowingPlaces(pageItems, placeIndex);

            await plannerDocRef.update({'planner_page_list': plannerPages,});
            await _onGetPlannerList(emit, plannerIndex, pageIndex);
          }
        }
      }else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
  }

  Future<void> _onUpdatePlaceStayTime(Emitter<PlannerState> emit, String plannerId, int plannerIndex, int pageIndex, int placeIndex, String newStayTime) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (plannerDocRef != null) {
      Map<String, dynamic>? plannerData = await firestore.getDocumentDataFromRef(plannerDocRef);
      if (plannerData != null) {
        List plannerPages = plannerData['planner_page_list'];
        if (plannerPages.length > pageIndex) {
          List pageItems = plannerPages[pageIndex]['page_item_list'];
          if (pageItems.length > placeIndex) {

            var startTime = pageItems[placeIndex]['start_time'];
            var newEndTime =  addMinutesToTime(startTime, newStayTime);

            pageItems[placeIndex]['stay_time'] = newStayTime;
            pageItems[placeIndex]['end_time'] = newEndTime;

            updateFollowingPlaces(pageItems, placeIndex+1);

            await plannerDocRef.update({'planner_page_list': plannerPages,});
            await _onGetPlannerList(emit, plannerIndex, pageIndex);
          }
        }
      }else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
  }

  Future<void> _onUpdatePlaceTransportation(Emitter<PlannerState> emit, String plannerId, int plannerIndex, int pageIndex, int placeIndex, String transportation, String newTravelTime, bool changeStay, String newStayTime) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if (plannerDocRef != null) {
      Map<String, dynamic>? plannerData = await firestore.getDocumentDataFromRef(plannerDocRef);
      if (plannerData != null) {
        List plannerPages = plannerData['planner_page_list'];
        if (plannerPages.length > pageIndex) {
          List pageItems = plannerPages[pageIndex]['page_item_list'];
          if (pageItems.length > placeIndex) {

            var travelTime = pageItems[placeIndex]['travel_time'] ?? '1분미만';
            var startTime = subtractMinutesFromTime(pageItems[placeIndex]['start_time'], timeStringToMinutes(travelTime));
            var newStartTime = addMinutesToTime(startTime, timeStringToMinutes(newTravelTime));

            pageItems[placeIndex]['travel_time'] = newTravelTime;
            pageItems[placeIndex]['transportation'] = transportation;
            pageItems[placeIndex]['start_time'] = newStartTime;

            await plannerDocRef.update({'planner_page_list': plannerPages,});

            if(changeStay){
              await _onUpdatePlaceStayTime(emit, plannerId, plannerIndex, pageIndex, placeIndex, newStayTime);
            }else{
              await _onGetPlannerList(emit, plannerIndex, pageIndex);
            }
          }
        }
      }else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
  }

  Future<void> _onUpdatePlace() async {
    // todo placeIndex에 있는 장소 정보 수정
    // todo 이전 장소와 distance 구하기
    // placeIndex Place - cur_address_info, place_name, distance, travel_time, transportation, stay_time, start_time, end_time 수정
    // 바로 직후 place - start time, end time, distance, travel_time, prev_address_info 수정
    // 이후 place - start time, end time 수정
  }

  Future<void> _onUpdateSelected(Emitter<PlannerState> emit, int selectedIndex) async {
    state.maybeWhen(
      success: (plannerList, selected, pageIndex) => emit(PlannerState.success(plannerList, selectedIndex,0)),
      orElse: () {},
    );
  }

  void updateFollowingPlaces(List pageItems, int placeIndex) {
    for (int i = placeIndex; i < pageItems.length; i++) {
      var prevEndTime = pageItems[i - 1]['end_time'];
      var travelTime = pageItems[i]['travel_time'];
      var stayTime = pageItems[i]['stay_time'];
      var startTime = addMinutesToTime(prevEndTime, timeStringToMinutes(travelTime));
      var endTime = addMinutesToTime(startTime, stayTime);

      pageItems[i]['start_time'] = startTime;
      pageItems[i]['end_time'] = endTime;
    }
  }

}
