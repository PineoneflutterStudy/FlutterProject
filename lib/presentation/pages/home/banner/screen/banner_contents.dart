import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/logger.dart';
import '../../home_state.dart';
import '../notifier/banner_notifier.dart';

final Logger _logger = CustomLogger.logger;
late String imageToken = '';

class BannerContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: BannerListView());
  }
}

class BannerListView extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BannerListView();
}

class _BannerListView extends ConsumerState<BannerListView> {
  @override
  void initState() {
    super.initState();
    imageToken = FlutterConfig.get('FIRE_STORE_IMG_STORAGE_TOKEN');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(bannerNotifierProvider.notifier).getBannerList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final provider = ref.watch(bannerNotifierProvider);
          final apiStatus =
          ref.watch(bannerNotifierProvider.select((p) => p.status));

          switch (apiStatus) {
            case HomeResponseStatus.init:
              return CircularProgressIndicator();
            case HomeResponseStatus.load:
              return CircularProgressIndicator();
            case HomeResponseStatus.fail:
              return const Dialog(child: Text("조회에 실패 했습니다.\n다시 시작해 주세요."));
            case HomeResponseStatus.success:
            // notifier 에서 null 체크 진행
              final items = provider.bannerDbDto!.contents;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  child: Image.network('${items[0].imageUrl}$imageToken'),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15)),
                ),

              );
          }
        },
      ),
    );
  }
}
