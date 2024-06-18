import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Widget 비율로 배치하기
// constraints - https://docs.flutter.dev/ui/layout/constraints 참고
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
    return Column(
      children: [ // 높이 지정안하고 Flexible로 감싸주면 최대한도로 알아서 1:1 높이 셋팅, flex 로 비율 셋팅도 가능
        Flexible(flex:1, child: Container(color: Colors.red)),
        Flexible(flex:2, child: Container(color: Colors.orange)),
        Flexible(flex:1, child: Container(color: Colors.yellow)),
        Flexible(flex:2, child: Container(color: Colors.green))
      ],
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: double.infinity, height: 200, color: Colors.pink), // 남은 공간 모두 차지하게 - Flexible, Expanded 사용
        Expanded(child: Container(color: Colors.yellow, height: 100)), // Expanded는 높이지정 상관 X 나머지 공간 차지
        Flexible(child: Container(color: Colors.purple, height: 100))  // Flexible은 높이 지정할 경우 지정된 높이로 설정되어 나머지 공간 차지 X
      ],
    );
  }
}