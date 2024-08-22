import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/place/address.model.dart';
import '../../../../../domain/usecase/planner/plan/get_address_info.usecase.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';

part 'address_event.dart';
part 'address_state.dart';

part 'address_bloc.freezed.dart';

/// ## 장소 주소관련 Bloc
///
/// author nanioi[0802skdus@naver.com]

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final PlannerUsecase _plannerUsecase;

  AddressBloc(this._plannerUsecase) : super(const AddressState.loading()) {
    // on<event>(함수) - event발생시 함수 호출
    on<AddressInitialized>(_onAddressInitialized);
    on<AddressUpdated>(_onAddressUpdated);
    on<SetAddressUpdated>(_onSetAddressUpdated);
    on<FilterUpdated>(_onFilterUpdated);
  }

  /// 처음 장소 검색 시, 필터 설정 X
  Future<void> _onAddressInitialized(AddressInitialized event, Emitter<AddressState> emit) async {
    final location = event.location;
    try {
      final response = await _fetch(location);
      response.when(
        Success: (address) {
          if (address == null) {
            emit(AddressState.error(ErrorResponse(status: '1', code: '9999', message: '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.'),));
          } else {
            final addressInfo = Address(addressName: address.addressName, x: address.x, y: address.y, radius: 10000, sort: 'distance');
            emit(AddressState.success(addressInfo));
          }
        },
        failure: (error) {
          emit(AddressState.error(error));
        },
      );
    } catch (error) {
      emit(AddressState.error(CommonException.setError(error)));
    }
  }

  /// 필터 설정 후 검색 시 필터정보 유지, 장소 정보만 변경 (지역, 좌표(x,y))
  Future<void> _onAddressUpdated(AddressUpdated event, Emitter<AddressState> emit) async {
    final location = event.location;
    try {
      final response = await _fetch(location);
      response.when(
        Success: (address) {
          if (address == null) {
            emit(AddressState.error(ErrorResponse(status: '1', code: '9999', message: '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.')));
          } else {
            final currentState = state;
            final updatedAddress = Address(
              addressName: address.addressName,
              x: address.x,
              y: address.y,
              radius: currentState is _Success ? currentState.addressInfo.radius : 10000,
              sort: currentState is _Success ? currentState.addressInfo.sort : 'distance',
            );
            emit(AddressState.success(updatedAddress));
          }
        },
        failure: (error) {
          emit(AddressState.error(error));
        },
      );
    } catch (error) {
      emit(AddressState.error(CommonException.setError(error)));
    }
  }

  Future<void> _onSetAddressUpdated(SetAddressUpdated event, Emitter<AddressState> emit) async {
    final address = event.address;
    emit(AddressState.success(address));
  }

  /// 필터 정보 변경시 필터 정보만 수정 (radius, sort)
  void _onFilterUpdated(FilterUpdated event, Emitter<AddressState> emit) {
    state.maybeWhen(
      success: (addressInfo) =>  emit(AddressState.success(addressInfo.copyWith(radius: event.radius, sort: event.sort))),
      orElse: () {},
    );
  }

  Future<Result<Address?>> _fetch(String location) async {
    return await _plannerUsecase.execute(
      usecase: GetAddressInfoUsecase(location),
    );
  }
}