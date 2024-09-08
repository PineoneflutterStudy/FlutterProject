import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/plan/planner.model.dart';

part 'planner_event.dart';

part 'planner_state.dart';

part 'planner_bloc.freezed.dart';

class PlannerBloc extends Bloc<PlannerEvent, PlannerState> {
  final firestore = FirebaseFirestoreUtil();
  final auth = FirebaseAuthUtil();

  PlannerBloc() : super(const PlannerState.loading()) {
    on<PlannerEvent>((event, emit) async {
      await event.when(
        checkLoginState: () async => await _onCheckLoginState(emit),
        getPlannerList: (index) async => await _onGetPlannerList(emit, index),
        addPlanner: (planner) async => await _onAddPlanner(emit, planner),
        addPlannerItem: (plannerIndex, index, plannerItem) async => await _onAddPlannerItem(emit, plannerIndex, index, plannerItem),
        selected: (selectedIndex) async => await _onUpdateSelected(emit, selectedIndex),
        deletePlanner: (plannerIndex) async => await _onDeletePlanner(emit, plannerIndex),
      );
    });
  }

  /// 로그인체크
  Future<void> _onCheckLoginState(Emitter<PlannerState> emit) async {
    bool isLoggedIn = await auth.isLoggedIn();

    if (isLoggedIn) {
      await _onGetPlannerList(emit,0);
    } else {
      // Emit a state if the user is not logged in (optional)
      emit(PlannerState.init(false));
    }
  }

  /// firestore - PlannerList 불러오기
  Future<void> _onGetPlannerList(Emitter<PlannerState> emit, int index) async {
    try {
      final plannerList = await firestore.getDocumentsFromCollectionMapperData(DBKey.DB_PLANNER, (json) => Planner.fromJson(json));
      print('plannerList : $plannerList');
      if (plannerList != null && plannerList.isNotEmpty) {
        emit(PlannerState.success(plannerList, index));
      } else {
        emit(PlannerState.init(true));
      }
    } catch (error) {
      emit(PlannerState.error(ErrorResponse(status: '1', code: '9999', message: 'get firestore planner list error')));
    }
  }

  /// 여행계획 추가
  // 카테고리에서 추가하는 경우, 처음 여행계획 추가하는 경우
  Future<void> _onAddPlanner(Emitter<PlannerState> emit, Planner newPlanner) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, newPlanner.planner_index.toString());
    if (plannerDocRef != null) {
      await firestore.setDocument(plannerDocRef, newPlanner.toJson());
    } else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
    state.maybeWhen(success: (plannerList, selected) {
      // 기존 플래너 목록에 새 플래너를 추가
      final updatedList = List<Planner>.from(plannerList)..add(newPlanner);
      emit(PlannerState.success(updatedList, updatedList.length-1));
    }, orElse: () {
      // 플래너 목록이 없을 때
      emit(PlannerState.success([newPlanner], 0));
    });
  }

  Future<void> _onUpdateSelected(Emitter<PlannerState> emit, int selectedIndex) async {
    state.maybeWhen(
        success: (plannerList, selected) => emit(PlannerState.success(plannerList, selectedIndex)),
        orElse: () {},
    );
  }

  /// 계획에 장소 추가하기
  Future<void> _onAddPlannerItem(Emitter<PlannerState> emit, int plannerIndex, int pageIndex, PlannerItem newPlannerItem) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerIndex.toString());
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
          await _onGetPlannerList(emit,plannerIndex); // todo planner index로 수정 // list 갱신
        } else {
          CustomLogger.logger.e('해당 페이지 인덱스가 유효하지 않습니다.');
        }
      } else {
        CustomLogger.logger.e("plannerDocRef is null");
      }
    }
  }

  /// 현재 Planner 삭제 > 첫번째 item으로 포커스
  Future<void> _onDeletePlanner(Emitter<PlannerState> emit, int plannerIndex) async {
    var docRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerIndex.toString());
    if (docRef != null) {
      firestore.deleteDocument(docRef);
      await _onGetPlannerList(emit,0);
    } else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
  }
}
