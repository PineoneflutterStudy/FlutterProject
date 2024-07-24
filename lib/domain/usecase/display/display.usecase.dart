import '../../repository/display.repository.dart';
import '../base/remote.usecase.dart';

/**
 * DisplayRepository를 사용하여 특정 유스케이스를 실행하는 역할
 */
class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return await usecase(_displayRepository);
  }
}
