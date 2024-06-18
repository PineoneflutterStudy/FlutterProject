import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Widget 여러겹 쌓아보기
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: const Text('Widget 비율로 배치하기')),
      body: const Body2(),
    ), // Scaffold - 기본, 도화지
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 여러겹 쌓기
      children: [
        Container(width: 500, height: 500, color: Colors.black),
        Align(
            alignment: const Alignment(0.5, -0.5),
            child: Container(width: 400, height: 400, color: Colors.red)),
        Align(
            alignment: Alignment.topCenter,
            child: Container(width: 300, height: 300, color: Colors.blue)),
        Positioned(
            bottom: 5,
            right: 30,
            child: Container(width: 200, height: 200, color: Colors.green)),
      ],
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(150))),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(150))),
        ),
        const Align(
            alignment: Alignment.center,
            child: Text('Count 0', style: TextStyle(color: Colors.red, fontSize: 32))
        ),
      ],
    );
  }
}