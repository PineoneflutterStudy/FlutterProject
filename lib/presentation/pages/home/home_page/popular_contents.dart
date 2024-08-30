import 'package:flutter/material.dart';

import '../../../../core/utils/logger.dart';
import 'home_api_service.dart';

class PopularContents extends StatelessWidget {
  PopularContents({
    super.key,
  });

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
                // 타이틀
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('${snapshot.data?.titleList[0]}',
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // 가로 스크롤
                    itemCount: snapshot.data?.imageList.length ?? 0,
                    itemBuilder: (context, index) {
                      return PopularItem(snapshot, index);
                    },
                  ),
                )
              ]);
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Padding PopularItem(AsyncSnapshot<HomeApiService> snapshot, int i) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            child: Image.network(snapshot.data?.imageList[i] ?? '',
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                }),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25)),
          ),
          Text('${snapshot.data?.locationList[i]}',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30))
        ],
      ),
    );
  }
}
