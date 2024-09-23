import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/home/banner_db.model.dart';
import '../../../../../domain/repository/home/banner_firestore.repository.dart';
import '../../home_providers.dart';
import '../../home_state.dart';
import 'banner_state.dart';

part 'banner_notifier.g.dart';

@riverpod
class BannerNotifier extends _$BannerNotifier {
  @override
  build() {
    return BannerState();
  }

  BannerFireStoreRepository get _BannerRepo =>
      ref.read(bannerFireStoreDBProvider);
  final Logger _logger = CustomLogger.logger;

  Future<BannerDbModel?> getBannerList() async {
    state = state.copyWith(status: HomeResponseStatus.load);
    final _responseJson = await _BannerRepo.getBannerList();
    _logger.i('Confirm getBannerList ( _responseJson ) -> ${_responseJson}');

    if (_responseJson != null) {
      if (_responseJson.isNotEmpty) {
        final model = BannerDbModel.fromJson(_responseJson);
        state = state.copyWith(status: HomeResponseStatus.success, bannerDbDto: model);
        return model;
      }
    }

    state = state.copyWith(status: HomeResponseStatus.fail);
    return null;
  }
}
