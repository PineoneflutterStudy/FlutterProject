import 'package:flutter/material.dart';

import '../../main/common/component/widget/like_appbar.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LikeAppbar(title: '찜목록'),
    );
  }
}
