import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/**
 * 찜목록 화면 로딩 Widget
 */
class LikeLoadingPage extends StatelessWidget {
  const LikeLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
