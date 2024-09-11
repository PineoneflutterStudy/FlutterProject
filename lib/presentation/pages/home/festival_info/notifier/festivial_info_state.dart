import '../../../../../domain/model/display/home/tour_detail_info.model.dart';
import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../../../../domain/model/display/home/tour_image_info.model.dart';
import '../../home_state.dart';

class FestivialState extends HomeState {
  const FestivialState({
    this.status = HomeResponseStatus.init,
    this.festivalInfoDto = const [],
    this.detailInfoDto = const [],
  });

  final HomeResponseStatus status;
  final List<TourFestivalInfoModel> festivalInfoDto; // 행사 정보 조회 결과
  final List<List<TourDetailInfoModel>?> detailInfoDto; // 콘텐츠 이미지 정보 조회 결과

  FestivialState copyWith({
    HomeResponseStatus? status,
    List<TourFestivalInfoModel>? festivalInfoDto,
    List<List<TourDetailInfoModel>?>? detailInfoDto,
  }) {
    return FestivialState(
        status: status ?? this.status,
        festivalInfoDto: festivalInfoDto ?? this.festivalInfoDto,
        detailInfoDto: detailInfoDto ?? this.detailInfoDto);
  }

  @override
  List<Object?> get props => [status, festivalInfoDto, detailInfoDto];
}
