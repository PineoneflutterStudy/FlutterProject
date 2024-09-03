import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../domain/repository/like/region_repository.dart';
import '../../../../domain/model/display/like/access_token.dart';
import '../../../../domain/model/display/like/region.dart';
import '../../../../domain/model/display/like/region_list.dart';
import '../../../../domain/model/display/like/region_select.dart';

part 'region_filter_event.dart';
part 'region_filter_state.dart';
part 'region_filter_bloc.freezed.dart';

class RegionFilterBloc extends Bloc<RegionFilterEvent, RegionFilterState> {
  final RegionRepository repository;

  RegionFilterBloc({required this.repository}) : super(const RegionFilterState.initial()) {
    on<RegionFilterEvent>((event, emit) async {
      await event.map(
        started: (e) async => await _onStarted(emit),
        major: (e) async => await _onSelectMajor(emit, e.address, e.cd, e.current, e.inputType),
        middle: (e) async =>  await _onSelectMiddle(emit,  e.address, e.cd, e.current, e.inputType),
        finish: (e) => _onFinish(emit, e.result),
      );
    });
  }

  Future<void> _onStarted(Emitter<RegionFilterState> emit) async {
    print('on Started');
    AccessTokenModel accessToken = await repository.getAccessToken();
    List<RegionModel> regionAddrList =
      await repository.getRegionAddr(
          accessToken.accessToken,
          null
      );

    emit(RegionFilterState.showMajor(RegionListModel(
        currentAddr: null,
        newAddr: regionAddrList,
        selectedIdx: 0,
    )));
  }

  Future<void> _onSelectMajor(
    Emitter<RegionFilterState> emit,
    List<RegionModel> middle,
    String cd,
    String current,
    String inputType,
  ) async {

    AccessTokenModel accessToken = await repository.getAccessToken();
    List<RegionModel> responseAddress =
    await repository.getRegionAddr(
      accessToken.accessToken,
      cd,
    );

    emit(RegionFilterState.showMiddle(RegionListModel(
      currentAddr: middle,
      newAddr: responseAddress,
      selectedIdx: 0,
    ),
      current,
    ));
  }

  Future<void> _onSelectMiddle(
    Emitter<RegionFilterState> emit,
    List<RegionModel> minor,
    String cd,
    String current,
    String inputType
  ) async {
    AccessTokenModel accessToken = await repository.getAccessToken();
    List<RegionModel> responseAddress =
    await repository.getRegionAddr(
      accessToken.accessToken,
      cd,
    );

    // if (inputType == 'middle') {
    //   emit(RegionFilterState.showMiddle(RegionListModel(
    //     currentAddr: minor,
    //     newAddr: responseAddress,
    //     selectedIdx: 0,
    //   ),
    //     current,
    //   ));
    // } else {
    //
    // }

    emit(RegionFilterState.showMinor(RegionListModel(
      currentAddr: minor,
      newAddr: responseAddress,
      selectedIdx: 0,
    ),
      current,
    ));
  }

  Future<void> _onFinish(
      Emitter<RegionFilterState> emit,
      String result,
  ) async {
    emit(RegionFilterState.finish(result));
  }
}
