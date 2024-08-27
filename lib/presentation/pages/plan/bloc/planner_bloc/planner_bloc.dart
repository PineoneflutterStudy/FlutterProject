import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/DBkey.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/place/planner.model.dart';

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
        getPlannerList: () async => await _onGetPlannerList(emit),
        addPlanner: (planner) async => await _onAddPlanner(emit, planner),
        selected: (selectedPlanner) async => await _onUpdateSelected(emit, selectedPlanner),
        deletePlanner: (plannerId) async => await _onDeletePlanner(emit, plannerId),
      );
    });
  }

  Future<void> _onCheckLoginState(Emitter<PlannerState> emit) async{
    bool isLoggedIn = await auth.isLoggedIn();

    if(isLoggedIn){
      await _onGetPlannerList(emit);
    }else {
      // Emit a state if the user is not logged in (optional)
     emit(PlannerState.init(false));
    }
  }


  Future<void> _onGetPlannerList(Emitter<PlannerState> emit) async{
    try {
      final plannerList = await firestore.getDocumentsFromCollectionMapperData(DBKey.DB_PLANNER,(json) => Planner.fromJson(json));
      print('plannerList : $plannerList');
      if (plannerList != null && plannerList.isNotEmpty) {
        emit(PlannerState.success(plannerList, plannerList[0]));
      } else {
        emit(PlannerState.init(true));
      }
    } catch (error) {
      emit(PlannerState.error(ErrorResponse(status: '1', code: '9999', message: 'get firestore planner list error')));
    }
  }

  Future<void> _onAddPlanner(Emitter<PlannerState> emit, Planner newPlanner) async {
    final plannerDocRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, newPlanner.planner_id);
    if (plannerDocRef != null) {
      await firestore.setDocument(plannerDocRef, newPlanner.toJson());
    } else {
      CustomLogger.logger.e("plannerDocRef is null");
    }
    state.maybeWhen(
        success: (plannerList, selected) { // 기존 플래너 목록에 새 플래너를 추가
          final updatedList = List<Planner>.from(plannerList)..add(newPlanner);
          emit(PlannerState.success(updatedList, newPlanner));
        },
        orElse: () { // 플래너 목록이 없을 때
          emit(PlannerState.success([newPlanner], newPlanner));
        }
    );
  }

  Future<void> _onUpdateSelected(Emitter<PlannerState> emit, Planner newSelected) async {
    state.maybeWhen(
      success: (plannerList, selected) => emit(PlannerState.success(plannerList, newSelected)),
      orElse: () {}
    );
  }

  Future<void> _onDeletePlanner(Emitter<PlannerState> emit, String plannerId) async {
    var docRef = await firestore.getCollectionDocRef(DBKey.DB_PLANNER, plannerId);
    if(docRef != null){
      firestore.deleteDocument(docRef);
    }else{
      CustomLogger.logger.e("plannerDocRef is null");
    }
  }
}
