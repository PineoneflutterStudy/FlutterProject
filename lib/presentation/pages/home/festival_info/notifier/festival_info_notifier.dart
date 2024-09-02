import 'package:flutter_config/flutter_config.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
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
    return null;
  }
}
