part of 'region_filter_bloc.dart';

@freezed
class RegionFilterEvent with _$RegionFilterEvent {
  const factory RegionFilterEvent.started() = _Started;
  const factory RegionFilterEvent.loading() = _Loading;
  const factory RegionFilterEvent.loaded() = _Loaded;
  const factory RegionFilterEvent.userSelected(String region) = _UserSelected;
}
