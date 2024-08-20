import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/access_token_model.dart';
import '../../domain/models/region_model.dart';
import '../../domain/repositories/region_repository.dart';

part 'region_filter_event.dart';
part 'region_filter_state.dart';
part 'region_filter_bloc.freezed.dart';

class RegionFilterBloc extends Bloc<RegionFilterEvent, RegionFilterState> {
  final RegionRepository repository;

  RegionFilterBloc({required this.repository}) : super(const RegionFilterState.initial()) {
    on<RegionFilterEvent>((event, emit) async {
      await event.map(
        started: (e) async => await _onStarted(emit),
        loading: (e) async => _onLoading(emit),
        loaded: (e) async =>  _onLoaded(emit),
        userSelected: (e) async => await _onSelected(emit, e.region),
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
    emit(RegionFilterState.onLoaded(regionAddrList));
  }

  void _onLoading(Emitter<RegionFilterState> emit) async {
    print('on Loading');
  }

  void _onLoaded(Emitter<RegionFilterState> emit) async {
    print('on Loaded');
  }

  Future<void> _onSelected(Emitter<RegionFilterState> emit, String cd) async {
    print('on Selected ${cd}');
    AccessTokenModel accessToken = await repository.getAccessToken();
    List<RegionModel> model =
      await repository.getRegionAddr(
        accessToken.accessToken,
        cd,
    );
    emit(RegionFilterState.onLoaded(model));
  }
}
