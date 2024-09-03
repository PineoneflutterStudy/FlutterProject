import 'package:flutter/material.dart';
import '../../../../pages/like/widget/region/region_widget.dart';

/**
 * 찜목록에서 사용하는 버튼도 추가된 AppBar
 * Title만 전달받아 set
 */
class LikeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double appbar_height = 70;
  LikeAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
            MaterialPageRoute(
                    builder: (context) => RegionWidget(),
                    fullscreenDialog: false
                  ),
                );

                print ('반환된 결과 값 -> ${result}');
              },
            ),
          ],
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
