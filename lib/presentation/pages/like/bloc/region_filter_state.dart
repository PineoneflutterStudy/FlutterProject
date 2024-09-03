part of 'region_filter_bloc.dart';

@freezed
class RegionFilterState with _$RegionFilterState {
  const factory RegionFilterState.initial() = _Initial;
  const factory RegionFilterState.showMajor(RegionListModel model) = _ShowMajor;
  const factory RegionFilterState.showMiddle(RegionListModel model, String currentRegion) = _ShowMiddle;
  const factory RegionFilterState.showMinor(RegionListModel model, String currentRegion) = _ShowMinor;
  const factory RegionFilterState.finish(String result) = _onFinish;
}
