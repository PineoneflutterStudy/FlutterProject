import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 위젯 상하좌우 배치
// 스크롤뷰 만들기
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: const Text('Widget 상하로 배치하기')),
      body: const Body2(),
    ), // Scaffold - 기본, 도화지
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( // Container로 감싸고 너비나 높이를 지정해 주지 않으면 자동 wrap_content
      height: 300,
      width: double.infinity, // == match_parent
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row( // 수평적으로 배치하고 싶으면 Row로
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center, // 안에 Container들 센터 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 좌우로 이동 (start - 왼쪽, end - 오른쪽)
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: const Text('Container1')),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.orange,
                  child: const Text('Container2')),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow,
                  child: const Text('Container3'))
            ],
          ),
          Container(
              width: 300,
              height: 120,
              color: Colors.blue,
              child: const Text('Container4'))
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // == scrollView
      scrollDirection: Axis.vertical, // horizontal - 수평 스크롤
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
          )
        ],
      ),
    );
  }
}