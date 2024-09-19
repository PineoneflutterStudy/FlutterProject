import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../domain/repository/like/region_repository.dart';
import '../../../../core/utils/constant.dart';
import '../../../../domain/model/display/like/access_token.dart';
import '../../../../domain/model/display/like/region.dart';
import '../../../../domain/model/display/like/region_list.dart';
import '../../../../domain/model/display/like/region_select.dart';
import '../utils/region_util.dart';

part 'region_filter_event.dart';
part 'region_filter_state.dart';
part 'region_filter_bloc.freezed.dart';

class RegionFilterBloc extends Bloc<RegionFilterEvent, RegionFilterState> with RegionUtil {

  RegionFilterBloc() : super(RegionFilterState()) {
    on<RegionFilterEvent>((event, emit) async {
      await event.map(
        started: (e) async => await _onStarted(emit),
        major: (e) async => await _onSelectMajor(emit, e.cd, e.selectAddr),
        middle: (e) async =>  await _onSelectMiddle(emit, e.cd, e.selectAddr),
        minor: (e) => _onSelectMinor(emit,e.selectAddr),
        finish: (e) => _onFinish(emit, e.result),
      );
    });
  }

  Future<void> _onStarted(Emitter<RegionFilterState> emit) async {
    print('on Started');
    AccessTokenModel accessToken = await getAccessTokenModel();
    List<RegionModel> responseAddress =
      await getRegionList(accessToken.accessToken, null);

    emit(state.copyWith(
      status: RegionStatus.showMajor,
      model: RegionListModel(addrList: responseAddress),
      select: RegionSelectModel(major: '', middle: '', minor: '', current: 1),
    ));
  }

  Future<void> _onSelectMajor(
    Emitter<RegionFilterState> emit,
    String cd,
    RegionSelectModel selectAddr,
  ) async {
    print('Major 선택');

    AccessTokenModel accessToken = await getAccessTokenModel();
    List<RegionModel> responseAddress =
      await getRegionList(accessToken.accessToken, cd);

    emit(state.copyWith(
      status: RegionStatus.showMiddle,
      model: RegionListModel(addrList: responseAddress),
      select: selectAddr,
    ));
  }

  Future<void> _onSelectMiddle(
    Emitter<RegionFilterState> emit,
    String cd,
    RegionSelectModel selectAddr,
  ) async {
    AccessTokenModel accessToken = await getAccessTokenModel();
    List<RegionModel> responseAddress =
      await getRegionList(accessToken.accessToken, cd);

    emit(state.copyWith(
      status: RegionStatus.showMinor,
      model: RegionListModel(addrList: responseAddress),
      select: selectAddr,
    ));
  }

  Future<void> _onSelectMinor(
      Emitter<RegionFilterState> emit,
      RegionSelectModel selectAddr,
  ) async {
    emit(state.copyWith(
      status: RegionStatus.finish,
      select: selectAddr,
    ));
  }

  Future<void> _onFinish(
      Emitter<RegionFilterState> emit,
      String result,
  ) async {

    emit (state.copyWith(

    ));
  }
}
