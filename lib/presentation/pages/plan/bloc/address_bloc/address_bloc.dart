import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/place/address.model.dart';
import '../../../../../domain/usecase/planner/plan/get_address_info.usecase.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';

part 'address_event.dart';
part 'address_state.dart';

part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final PlannerUsecase _plannerUsecase;

  AddressBloc(this._plannerUsecase) : super(AddressState()) {
    on<AddressInitialized>(_onAddressInitialized);
  }

  Future<void> _onAddressInitialized(AddressInitialized event, Emitter<AddressState> emit) async {
    final location = event.location;
    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(location);
      response.when(Success: (address) {
        emit(state.copyWith(status: Status.success, addressInfo: address));
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  Future<Result<Address>> _fetch(String location) async {
    return await _plannerUsecase.execute(
        usecase: GetAddressInfoUsecase(location)
    );
  }
}
