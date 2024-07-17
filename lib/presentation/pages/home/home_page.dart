import 'package:flutter/material.dart';

import '../../../core/utils/logger.dart';
import 'home_api_service.dart';

// 홈 화면
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(title: '개꿀트립'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Color(0xFFf4f8fa),
                  labelText: '지역이나 숙소를 검색하세요.',
                  icon: Icon(Icons.search_rounded)),
            ),
            SizedBox(
              height: 50,
            ),
            PopularWidget()
          ],
        ),
      ),
    );
  }
}

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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${snapshot.data?.titleList[0]}',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < snapshot.data!.imageList.length; i++)
                      Padding(
                        padding: EdgeInsets.all(5),
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
                                    fontWeight: FontWeight.w400, fontSize: 20))
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          );
        }
        return Text('...');
      },
    );
  }
}

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double appbar_height = 50;

  const HomeAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5, // 하단 음영
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )),
    );
  }

  // preferredSize 설정 (필수)
  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
