import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/DBkey.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/place/planner.model.dart';

part 'planner_event.dart';
part 'planner_state.dart';

part 'planner_bloc.freezed.dart';

class PlannerBloc extends Bloc<PlannerEvent, PlannerState> {
  final firestore = FirebaseFirestoreUtil();

  PlannerBloc() : super(const PlannerState.loading()) {
    on<PlannerEvent>((event, emit) async {
      await event.when(
        getPlannerList: () async => await _onGetPlannerList(emit),
        addPlanner: (planner) async => await _onAddPlanner(emit, planner),
        selected: (selectedPlanner) async => await _onUpdateSelected(emit, selectedPlanner),
      );
    });
  }

  Future<void> _onGetPlannerList(Emitter<PlannerState> emit) async{
    try {
      final plannerList = await firestore.getDocumentsFromCollectionMapperData(DBKey.DB_PLANNER,(json) => Planner.fromJson(json));
      if (plannerList != null && plannerList.isNotEmpty) {
        emit(PlannerState.success(plannerList, plannerList[0]));
      } else {
        emit(PlannerState.error(ErrorResponse(status: '1', code: '9999', message: 'get firestore planner list error')));
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

}
