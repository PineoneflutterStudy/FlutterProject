part of 'region_filter_bloc.dart';

@freezed
class RegionFilterState with _$RegionFilterState {
  const factory RegionFilterState ({
    @Default(RegionStatus.initial) RegionStatus status,
    @Default(RegionListModel(addrList: [])) RegionListModel model,
    @Default(RegionSelectModel(major: '', middle: '', minor: '', current: 1)) RegionSelectModel select,
  }) = _RegionFilterState;
}
