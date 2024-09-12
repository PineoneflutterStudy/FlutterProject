import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/constant/app_icons.dart';
import '../../routes/route_path.dart';

//앱시작 후 처음으로 보여지는 화면
//Todo 로그인 bloc
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  List<String> images = [ AppIcons.ImgBeeLaugh, AppIcons.ImgBeeWink, AppIcons.ImgBeeLove];

  int currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    changeImages();
    Timer(Duration(seconds: 4), () => context.go(RoutePath.main)); // 4초 후 홈 화면으로 이동, 뒤로가지 못하도록 push가 아닌 go로 설정
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
              Text('나만의 여행 플래너', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Text('댕꿀트립🍯', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
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
