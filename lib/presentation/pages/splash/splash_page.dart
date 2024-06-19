import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/route_path.dart';

const assetImagePath = 'assets/images';

//앱시작 후 처음으로 보여지는 화면
//Todo 하드코딩 된 부분 수정필요
//Todo 로그인 bloc
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  List<String> images = [
    '$assetImagePath/img_bee_laugh.png',
    '$assetImagePath/img_bee_wink.png',
    '$assetImagePath/img_bee_love.png'
  ];

  int currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    changeImages();
    Timer(Duration(seconds: 4), () => context.go(RoutePath.home)); // 4초 후 홈 화면으로 이동, 뒤로가지 못하도록 push가 아닌 go로 설정
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(images[currentIndex], width: 250, height: 250),
              SizedBox(height: 20),
              Text('나만의 여행 플래너', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('개꿀트립🍯', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ],
          ),
      )
    );
  }

  void changeImages() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    });
  }
}
