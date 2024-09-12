import 'package:flutter_config/flutter_config.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../domain/model/display/home/tour_detail_info.model.dart';
import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../../../../domain/model/display/home/tour_image_info.model.dart';
import '../../../../../domain/repository/tour_service.repository.dart';
import '../../home_providers.dart';
import '../../home_state.dart';
import 'festivial_info_state.dart';

part 'festival_info_notifier.g.dart';

@riverpod
class FestivalInfoNotifier extends _$FestivalInfoNotifier {
  @override
  FestivialState build() {
    return FestivialState();
  }

  TourServiceRepository get _tourServiceRepo => ref.read(tourServiceProvider);
  final Logger _logger = CustomLogger.logger;
  final String dt = DateFormat('yyyyMMdd').format(DateTime.now());

  List<TourFestivalInfoModel> festivalInfoDto = [];
  List<TourDetailInfoModel> detailInfoDto = [];

  /**
   * 행사 정보 조회
   */
  Future<List<TourFestivalInfoModel>?> getTourFestivalInfo() async {
    _logger.i('Start Api -> TourService Festival Api');
    state = state.copyWith(status: HomeResponseStatus.load);

    var model = await _tourServiceRepo.getTourFestivalInfo(
        serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
        numOfRows: 10,
        pageNo: 1,
        MobileOS: CommonUtils().getOsInfo(),
        MobileApp: TourApiRequestData().appName,
        type: TourApiRequestData().responseType,
        listYN: "Y",
        arrange: TourApiRequestData().arrangeList[5],
        eventStartDate: '$dt',
        eventEndDate: TourApiRequestData().emptyData,
        areaCode: TourApiRequestData().emptyData,
        sigunguCode: TourApiRequestData().emptyData,
        modifiedtime: TourApiRequestData().emptyData);

    _logger.i('Confirm getTourFestivalInfo ( model ) -> ${model.data}');

    if (model.data != null) {
      festivalInfoDto = model.data ?? [];

      List<TourDetailInfoModel>? detail;
      for (var i in festivalInfoDto) {
        detail = await getTourDetailInfo(i.contentid, i.contenttypeid) ?? [];

        if (detail.length > 0)
          detailInfoDto.add(detail[0]);
      }

      state = state.copyWith(
          status: HomeResponseStatus.success,
          festivalInfoDto: festivalInfoDto,
          detailInfoDto: detailInfoDto);
      return model.data;
    } else {
      state = state.copyWith(status: HomeResponseStatus.fail);
      return List.empty();
    }
  }

  /**
   * 콘텐츠 이미지 조회
   */
  Future<List<TourImageInfoModel>?> getTourImageInfo(String contentId) async {
    _logger.i('Start Api -> TourService ImageInfo Api');
    state = state.copyWith(status: HomeResponseStatus.load);

    var model = await _tourServiceRepo.getTourImageInfo(
      serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
      MobileOS: CommonUtils().getOsInfo(),
      MobileApp: TourApiRequestData().appName,
      type: TourApiRequestData().responseType,
      contentId: contentId,
      imageYN: 'Y',
      subImageYN: 'Y',
      numOfRows: 10,
      pageNo: 1,
    );

    _logger.i('Confirm getTourImageInfo ( model ) -> ${model.data}');

    return model.data;
  }

  /**
   * 콘텐츠 소개 정보 조회
   */
  Future<List<TourDetailInfoModel>?> getTourDetailInfo(String contentId, String contentType) async {
    _logger.i('Start Api -> TourService ImageInfo Api');
    state = state.copyWith(status: HomeResponseStatus.load);

    var model = await _tourServiceRepo.getTourDetailInfo(
      serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
      MobileOS: CommonUtils().getOsInfo(),
      MobileApp: TourApiRequestData().appName,
      type: TourApiRequestData().responseType,
      contentId: contentId,
      contentTypeId: contentType,
      numOfRows: 10,
      pageNo: 1,
    );

    _logger.i('Confirm getTourDetailInfo ( model ) -> ${model.data}');

    return model.data;
  }
}
