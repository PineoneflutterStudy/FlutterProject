import '../../../domain/model/display/home/festival_info_list_model.dart';
import '../../../domain/model/display/home/image_info_list_model.dart';
import '../../../domain/model/display/home/location_list_model.dart';
import '../../../domain/repository/home/tour_guide_repository.dart';
import '../../data_source/api/tour_guide/tour_guide_api.dart';
import '../../dto/display/common/festival/tourFestivalInfo.dto.dart';
import '../../dto/display/common/image/tourImageInfo.dto.dart';
import '../../dto/display/common/location/tourLocation.dto.dart';

class TourGuideRepositoryImpl extends TourGuideRepository {
  final TourGuideApi _api;

  TourGuideRepositoryImpl({
    required TourGuideApi api,
  }) : _api = api;

  @override
  Future<List<TourLocationDto>> getLocationData(LocationListModel model) {
    return _api.loadTourLocationList(model);
  }

  @override
  Future<List<TourImageInfoDto>> getImageInfoData(ImageInfoListModel model) {
    return _api.loadTourImageInfoList(model);
  }

  @override
  Future<List<TourFestivalInfoDto>> getFestivalData(FestivalInfoListModel model) {
    return _api.loadTourFestivalInfoList(model);
  }
}
