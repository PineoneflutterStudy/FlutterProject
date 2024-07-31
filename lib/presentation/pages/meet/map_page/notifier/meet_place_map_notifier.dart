import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../data/dto/display/common/location/tourLocation.dto.dart';
import '../../../../../domain/model/display/home/location_list_model.dart';
import '../../../../../domain/repository/home/tour_guide_repository.dart';
import '../../providers.dart';
import 'meet_place_map_state.dart';

final Logger _logger = CustomLogger.logger;

final meetPlaceStateProvider =
    StateNotifierProvider<MeetPlaceMapNotifier, MeetPlaceMapState>(
        (ref) => MeetPlaceMapNotifier(
              repo: ref.read(tourGuideApiRepositoryProvider),
            ));

class MeetPlaceMapNotifier extends StateNotifier<MeetPlaceMapState> {
  MeetPlaceMapNotifier({
    required TourGuideRepository repo,
  })  : _repo = repo,
        super(const MeetPlaceMapState());

  final TourGuideRepository _repo;

  Future<List<TourLocationDto>> getTourLocationInfo(LocationListModel model) async {
    return await _repo.getLocationData(model);
  }
}
