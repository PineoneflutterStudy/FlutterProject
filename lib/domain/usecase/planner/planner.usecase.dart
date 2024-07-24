import '../../repository/planner.repository.dart';
import '../base/remote.usecase.dart';

/**
 * PlannerRepository를 사용하여 특정 유스케이스를 실행하는 역할
 */
class PlannerUsecase {
  final PlannerRepository _plannerRepository;

  PlannerUsecase(this._plannerRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_plannerRepository);
  }
}
