import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/home/tour_image_info.model.dart';
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
  String get contentId => '';

  @override
  void initState() {
    super.initState();
    apiKey = FlutterConfig.get('TOUR_GUIDE_SERVICE_API_KEY_D');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(festivalInfoNotifierProvider.notifier).getTourFestivalInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer(
        builder: (context, ref, child) {
          final provider = ref.watch(festivalInfoNotifierProvider);
          final apiStatus =
              ref.watch(festivalInfoNotifierProvider.select((p) => p.status));

          switch (apiStatus) {
            case HomeResponseStatus.init:
            case HomeResponseStatus.load:
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: const CircularProgressIndicator());
            case HomeResponseStatus.fail:
              return const Dialog(child: Text("조회에 실패 했습니다.\n다시 시작해 주세요."));
            case HomeResponseStatus.success:
              return Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < provider.festivalInfoDto.length; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.inversePrimary,
                                // border: Border.all(),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primaryContainer, // 그림자 색상 (반투명한 검정색)
                                    spreadRadius: 1, // 그림자의 확산 정도
                                    blurRadius: 7, // 그림자의 흐림 정도
                                    offset: Offset(7, 7), // 그림자의 위치 (x, y)
                                  )
                                ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 180,
                                    child: contentImageWidget(provider.festivalInfoDto[i].firstimage), // 포스터 Item
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                  Container(
                                      width: 140,
                                      alignment: Alignment.center,
                                      child: Text(
                                        provider.festivalInfoDto[i].title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
          }
        },
      ),
    );
  }

  Widget contentImageWidget(String imgUrl) {
    if (imgUrl.isEmpty) {
      return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: AppColors.white, // 그림자 색상 (반투명한 검정색)
            spreadRadius: 5, // 그림자의 확산 정도
            blurRadius: 10, // 그림자의 흐림 정도
            offset: Offset(3, 3), // 그림자의 위치 (x, y)
          )
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppIcons.iconBeeHome, width: 70, height: 70),
            Text(
              '이미지 준비중입니다.',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: AppColors.black),
            )
          ],
        ),
      );
    } else {
      return Image.network(imgUrl,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          headers: const {
            "User-Agent":
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
          });
    }
  }
}
