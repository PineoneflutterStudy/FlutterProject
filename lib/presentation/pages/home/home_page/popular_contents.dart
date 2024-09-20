import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/usecase/planner/planner.usecase.dart';
import '../../../../service_locator.dart';
import '../../plan/bloc/address_bloc/address_bloc.dart';
import '../utils/home_util.dart';
import 'home_api_service.dart';

/**
 * 인기 여행지 Widget
 */
class PopularContents extends StatefulWidget {
  PopularContents({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _PopularContents();
  }
}

class _PopularContents extends State<PopularContents> {
  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HomeApiService.getIndex(),
      builder: (context, snapshot) {
        CustomLogger.logger.i('${snapshot.data}');
        if (snapshot.hasData) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('오늘은 어디를 가볼까?',
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal, // 가로 스크롤
                      itemCount: snapshot.data?.imageList.length ?? 0,
                      itemBuilder: (context, index) {
                        return PopularItem(snapshot, index);
                      },
                    ),
                  ),
                )
              ]);
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Padding PopularItem(AsyncSnapshot<HomeApiService> snapshot, int i) {
    var location = snapshot.data?.locationList[i];
    var image = snapshot.data?.imageList[i];
    double leftPadding = i == 0 ? 20 : 5;
    double rightPadding =
        (i + 1) == (snapshot.data?.locationList.length) ? 20 : 5;

    return Padding(
      padding: EdgeInsets.fromLTRB(leftPadding, 0, rightPadding, 0),
      child: GestureDetector(
        onTap: () {
          HomeUtil.searchRecommend(context, location ?? '');
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 150,
              child: ColorFiltered(
                child: Image.network(image ?? ''),
                colorFilter: const ColorFilter.mode(
                  AppColors.black20,
                  BlendMode.darken,
                ),
              ),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
            Text('$location',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    color: AppColors.white))
          ],
        ),
      ),
    );
  }
}
