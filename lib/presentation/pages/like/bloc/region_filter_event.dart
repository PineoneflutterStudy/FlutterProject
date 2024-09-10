part of 'region_filter_bloc.dart';

@freezed
class RegionFilterEvent with _$RegionFilterEvent {
  const factory RegionFilterEvent.started() = _Started;

  const factory RegionFilterEvent.major(
    String cd,
    RegionSelectModel selectAddr,
  ) = _Major;

  const factory RegionFilterEvent.middle(
    String cd,
    RegionSelectModel selectAddr,
  ) = _Middle;

  const factory RegionFilterEvent.minor(
    RegionSelectModel selectAddr,
  ) = _Minor;

  const factory RegionFilterEvent.finish(

    String result,
  ) = _Finish;
}
