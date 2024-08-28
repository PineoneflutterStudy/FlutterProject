

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/repository/meet/location_firestore.repository.dart';
import '../../providers.dart';
import '../view/meet_page.dart';
import 'meet_page_state.dart';

final meetPageStateProvider =
    StateNotifierProvider<MeetPageNotifier, MeetPageState> (
        (ref) => MeetPageNotifier(
          locationsRepo: ref.read(locationDBProvider),
        )
    );

class MeetPageNotifier extends StateNotifier<MeetPageState> {
  MeetPageNotifier({
    required LocationFireStoreRepository locationsRepo,
}) : _locationRepo = locationsRepo,
  super(const MeetPageState());

  final LocationFireStoreRepository _locationRepo;

  Future<void> getLoginState() async {
    await _locationRepo.getLoginState();
  }


}