import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
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
    on<AddressUpdated>(_onAddressUpdated);
    on<FilterUpdated>(_onFilterUpdated);
  }

  /// 처음 지역 정보 불러오기
  Future<void> _onAddressInitialized(AddressInitialized event, Emitter<AddressState> emit) async {
    final location = event.location;
    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(location);
      CustomLogger.logger.d('response : $response');
      response.when(Success: (address) {
        if(address == null){
          emit(state.copyWith(status: Status.error, error: ErrorResponse(status: '1',code: '9999',message: '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.')));
        }else{
          final addressInfo = state.addressInfo.copyWith(addressName: address.addressName, x: address.x, y: address.y, radius: 10000, sort: 'distance');
          emit(state.copyWith(status: Status.success, addressInfo: addressInfo));
        }
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  /// 검색 시 장소 정보만 변경 (지역, 좌표(x,y))
  Future<void> _onAddressUpdated(AddressUpdated event, Emitter<AddressState> emit) async {
    final location = event.location;
    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(location);
      response.when(Success: (address) {
        if (address == null) {
          emit(state.copyWith(status: Status.error, error: ErrorResponse(status: '1', code: '9999', message: '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.')));
        } else {
          final updatedAddress = state.addressInfo.copyWith(addressName: address.addressName, x: address.x, y: address.y);
          emit(state.copyWith(status: Status.success, addressInfo: updatedAddress));
        }
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  /// 필터 정보 변경시 필터 정보만 수정 (radius, sort)
  void _onFilterUpdated(FilterUpdated event, Emitter<AddressState> emit) {
    final updatedAddress = state.addressInfo.copyWith(radius: event.radius, sort: event.sort);
    emit(state.copyWith(status: Status.success, addressInfo: updatedAddress));
  }

  Future<Result<Address?>> _fetch(String location) async {
    return await _plannerUsecase.execute(
        usecase: GetAddressInfoUsecase(location)
    );
  }
}
