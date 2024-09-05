import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../../../../domain/model/display/home/tour_image_info.model.dart';
import '../../home_state.dart';

class FestivialState extends HomeState {
  const FestivialState({
    this.status = HomeResponseStatus.init,
    this.festivalInfoDto = const [],
    this.imageInfoDto = const [],
  });

  final HomeResponseStatus status;
  final List<TourFestivalInfoModel> festivalInfoDto; // 행사 정보 조회 결과
  final List<List<TourImageInfoModel>?> imageInfoDto; // 콘텐츠 이미지 정보 조회 결과

  FestivialState copyWith({
    HomeResponseStatus? status,
    List<TourFestivalInfoModel>? festivalInfoDto,
    List<List<TourImageInfoModel>?>? imageInfoDto,
  }) {
    return FestivialState(
        status: status ?? this.status,
        festivalInfoDto: festivalInfoDto ?? this.festivalInfoDto,
        imageInfoDto: imageInfoDto ?? this.imageInfoDto);
  }

  @override
  List<Object?> get props => [status, festivalInfoDto, imageInfoDto];
}
