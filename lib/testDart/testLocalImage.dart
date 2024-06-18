import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';

//로컬 데이터, 이미지 사용 방법
void main() {
  runApp(const MaterialApp(home: HomeWidget()));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: const Text('로컬데이터 이미지 불러오기')),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('$assetImagePath/img_bee_wink.png'),
    );
  }
}