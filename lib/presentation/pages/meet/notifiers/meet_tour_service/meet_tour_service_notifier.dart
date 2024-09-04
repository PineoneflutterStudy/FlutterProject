import 'package:flutter_config/flutter_config.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/api/tour_guide/tour_api_request_data.dart';
import '../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../domain/model/display/meet/tour_location.model.dart';
import '../../../../../domain/repository/tour_service.repository.dart';
import '../../providers.dart';
import 'meet_tour_service_state.dart';

part 'meet_tour_service_notifier.g.dart';

final Logger _logger = CustomLogger.logger;

@riverpod
class MeetTourServiceNotifier extends _$MeetTourServiceNotifier {
  @override
  MeetTourServiceState build() {
    return MeetTourServiceState();
  }

  TourServiceRepository get _repo => ref.read(tourServiceApiProvider);

  Future<void> getTourLocationService(List<AddressModel> addressList) async {
    state = state.copyWith(status: MeetTourServiceStatus.loading);

    final resultLocationInfo = await getTourLocationData(addressList);

    if (resultLocationInfo == null || resultLocationInfo.isEmpty) {
      _logger.e('Tour Service Api ( Location ) get Data... But Null || Empty');
      state = state.copyWith(
        status: MeetTourServiceStatus.failure,
        dto: List.empty(),
      );
      return;
    }

    _logger.i('Check Location Info Data Length -> ${resultLocationInfo.length}');
    state = state.copyWith(
      status: MeetTourServiceStatus.success,
      dto: resultLocationInfo,
    );
  }

  /// # 위치 기반 관광정보 api 실행
  Future<List<TourLocationModel>?> getTourLocationData(
      List<AddressModel> addressList) async {
    final centerValue = getCenter(addressList);

    _logger.i('Start Api -> Tour Location Service Api');

    var model = await _repo.getTourLocationInfo(
      serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
      numOfRows: TourApiRequestData().emptyIntData,
      pageNo: TourApiRequestData().emptyIntData,
      MobileOS: CommonUtils().getOsInfo(),
      MobileApp: TourApiRequestData().appName,
      type: TourApiRequestData().responseType,
      listYN: TourApiRequestData().emptyData,
      arrange: TourApiRequestData().arrangeList[1],
      mapX: centerValue[0].toString(),
      mapY: centerValue[1].toString(),
      radius: '${TourApiRequestData().defaultRadius}',
      contentTypeId: TourApiRequestData().contentTypes[7].toString(),
      modifiedtime: TourApiRequestData().emptyData,
    );

    _logger.i('Confirm getLocationData ( model ) -> ${model.data}');

    if (model.data == null || model.data!.isEmpty || model.data!.length == 0) {
      state = state.copyWith(status: MeetTourServiceStatus.loading);
      for (int i = 1; i < 100; i++) {
        model = await _repo.getTourLocationInfo(
          serviceKey: FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D'),
          numOfRows: TourApiRequestData().emptyIntData,
          pageNo: TourApiRequestData().emptyIntData,
          MobileOS: CommonUtils().getOsInfo(),
          MobileApp: TourApiRequestData().appName,
          type: TourApiRequestData().responseType,
          listYN: TourApiRequestData().emptyData,
          arrange: TourApiRequestData().arrangeList[1],
          mapX: centerValue[0].toString(),
          mapY: centerValue[1].toString(),
          radius: '${TourApiRequestData().defaultRadius + (1000 * i)}',
          contentTypeId: TourApiRequestData().contentTypes[7].toString(),
          modifiedtime: TourApiRequestData().emptyData,
        );
        _logger.i(
            'Radius Value ( ${TourApiRequestData().defaultRadius + (1000 * i)} ) Start Tour Location Api.. -> result : ${model}');
        if (model.data != null) {
          return model.data;
        } else if (model.data == null) {
          state = state.copyWith(status: MeetTourServiceStatus.loading);
          return List.empty();
        }
      }
    } else {
      return model.data;
    }
  }

  /// # 중앙 좌표 정보
  /// ### index 0 : 경도 평균 ( longitude )
  /// ### index 1 : 위도 평균 ( latitude )
  List<double> getCenter(List<AddressModel> addressList) {
    List<double> centers = [];
    double longitudes = 0.0;
    double latitudes = 0.0;
    for (int i = 0; i < addressList.length; i++) {
      longitudes += addressList[i].longitude;
      latitudes += addressList[i].latitude;
    }

    centers.add(longitudes / addressList.length);
    centers.add(latitudes / addressList.length);

    return centers;
  }
}
