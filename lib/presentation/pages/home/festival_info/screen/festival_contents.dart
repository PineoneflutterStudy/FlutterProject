import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/logger.dart';
import '../../home_state.dart';
import '../notifier/festival_info_notifier.dart';

final Logger _logger = CustomLogger.logger;
late String apiKey = '';

class FestivalContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: FestivalListView());
  }
}

class FestivalListView extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FestivalListView();
}

class _FestivalListView extends ConsumerState<FestivalListView> {
  @override
  void initState() {
    super.initState();
    apiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(festivalStateProvider.notifier).getTourFestivalInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer(
        builder: (context, ref, child) {
          final provider = ref.watch(festivalStateProvider);
          final apiStatus =
              ref.watch(festivalStateProvider.select((p) => p.status));

          switch (apiStatus) {
            case HomeResponseStatus.init:
            case HomeResponseStatus.load:
              return const CircularProgressIndicator();
            case HomeResponseStatus.fail:
              return const Dialog(child: Text("조회에 실패 했습니다.\n다시 시작해 주세요."));
            case HomeResponseStatus.success:
              return Column(
                children: [
                  for (var i in provider.festivalDto)
                    Container(child: Text(i.title))
                ],
              );
          }
        },
      ),
    );
  }
}
