part of 'region_filter_bloc.dart';

@freezed
class RegionFilterState with _$RegionFilterState {
  const factory RegionFilterState.initial() = _Initial;
  const factory RegionFilterState.onLoading() = _OnLoading;
  const factory RegionFilterState.onLoaded(List<RegionModel> model) = _OnLoaded;
  const factory RegionFilterState.selectRegion() = _SelectRegion;
}
