part of 'region_filter_bloc.dart';

@freezed
class RegionFilterEvent with _$RegionFilterEvent {
  const factory RegionFilterEvent.started() = _Started;

  const factory RegionFilterEvent.major(
    List<RegionModel> address,
    String cd,
    String current,
    String inputType,
  ) = _Major;

  const factory RegionFilterEvent.middle(
    List<RegionModel> address,
    String cd,
    String current,
    String inputType,
  ) = _Middle;

  const factory RegionFilterEvent.finish(
    String result,
  ) = _Finish;
}
