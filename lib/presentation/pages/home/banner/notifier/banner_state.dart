import '../../../../../domain/model/display/home/banner_db.model.dart';
import '../../home_state.dart';

class BannerState extends HomeState {
  const BannerState({
    this.status = HomeResponseStatus.init,
    this.bannerDbDto = null,
  });

  final HomeResponseStatus status;
  final BannerDbModel? bannerDbDto; // FireStore 배너 리스트

  BannerState copyWith({
    HomeResponseStatus? status,
    BannerDbModel? bannerDbDto,
  }) {
    return BannerState(
        status: status ?? this.status,
        bannerDbDto: bannerDbDto ?? this.bannerDbDto
    );
  }

  @override
  List<Object?> get props => [status, bannerDbDto];
}
