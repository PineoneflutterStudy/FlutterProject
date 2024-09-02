import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'meet_tour_service_state.dart';

part 'meet_tour_service_notifier.g.dart';

@riverpod
class MeetTourServiceNotifier extends _$MeetTourServiceNotifier {
  @override
  MeetTourServiceState build() {
    return MeetTourServiceState();
  }
}
