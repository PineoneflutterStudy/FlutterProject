import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'meet_mobility_state.dart';

part 'meet_mobility_notifier.g.dart';

@riverpod
class MeetMobilityNotifier extends _$MeetMobilityNotifier {
  @override
  MeetMobilityState build() {
    return MeetMobilityState();
  }
}
