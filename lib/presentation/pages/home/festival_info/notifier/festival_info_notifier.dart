import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../../../../domain/model/display/meet/tour_location.model.dart';
import '../../../../../domain/repository/tour_service.repository.dart';
import '../../home_providers.dart';
import '../../home_state.dart';
import 'festivial_info_state.dart';


final festivalStateProvider =
StateNotifierProvider<FestivalListNotifier, FestivialState>(
        (ref) => FestivalListNotifier(tour: ref.read(tourServiceProvider)));

class FestivalListNotifier extends StateNotifier<FestivialState> {
  final TourServiceRepository _tourServiceRepo;
  final Logger _logger = CustomLogger.logger;
  final dt = DateTime.now();

  FestivalListNotifier({
    required TourServiceRepository tour,
  })
      : _tourServiceRepo = tour,
        super(const FestivialState());


  Future<List<TourFestivalInfoModel>?> getTourFestivalInfo() async {
    _logger.i('Start Api -> TourService Festival Api');
    state = state.copyWith(status: HomeResponseStatus.load);

    var model = await _tourServiceRepo.getTourFestivalInfo(
      // fixme : hard
        serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
        numOfRows: 10,
        pageNo: 1,
        MobileOS: CommonUtils().getOsInfo(),
        MobileApp: TourApiRequestData().appName,
        type: TourApiRequestData().responseType,
        listYN: "Y",
        arrange: TourApiRequestData().arrangeList[5],
        eventStartDate: "20240828",
        eventEndDate: TourApiRequestData().emptyData,
        areaCode: TourApiRequestData().emptyData,
        sigunguCode: TourApiRequestData().emptyData,
        modifiedtime: TourApiRequestData().emptyData
    );

    _logger.i('Confirm getTourFestivalInfo ( model ) -> ${model.data}');

    if (model.data != null) {
      state =
          state.copyWith(status: HomeResponseStatus.success, dto: model.data);
      return model.data;
    } else if (model.data == null) {
      state = state.copyWith(status: HomeResponseStatus.fail);
      return List.empty();
    }
  }
}
