import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../home_state.dart';

class FestivialState extends HomeState {
  const FestivialState(
      {this.status = HomeResponseStatus.init, this.festivalDto = const []});

  final HomeResponseStatus status;
  final List<TourFestivalInfoModel> festivalDto; // 행사 정보 조회 결과

  FestivialState copyWith({
    HomeResponseStatus? status,
    List<TourFestivalInfoModel>? dto,
  }) {
    return FestivialState(
      status: status ?? this.status,
      festivalDto: dto ?? this.festivalDto,
    );
  }

  @override
  List<Object?> get props => [status, festivalDto];
}
