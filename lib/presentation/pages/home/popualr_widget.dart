import 'package:flutter/material.dart';

import '../../../core/utils/logger.dart';
import 'home_api_service.dart';

class PopularWidget extends StatelessWidget {
  PopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HomeApiService.getIndex(),
      builder: (context, snapshot) {
        CustomLogger.logger.i('${snapshot.data}');
        if (snapshot.hasData) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${snapshot.data?.titleList[0]}',
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
                  Row(
                    children: [
                      for (var i = 0; i < snapshot.data!.imageList.length; i++)
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                child: Image.network(
                                    snapshot.data?.imageList[i] ?? '',
                                    headers: const {
                                      "User-Agent":
                                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                                    }),
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Text('${snapshot.data?.locationList[i]}',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20))
                            ],
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        return Text('...');
      },
    );
  }
}
