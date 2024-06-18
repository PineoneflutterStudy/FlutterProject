import 'package:flutter/material.dart';

// Container 만들어 보기
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Study to Containter')),
      body: const CustomContainer(),
    ), // Scaffold - 기본, 도화지
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // == match_parent
      height: 100,
      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),  // fromLTRB와 symmetric 가장 많이 사용
      decoration: BoxDecoration(
          color: const Color(0xC6EFBBFF), // Colors.red.shade200 or Color(0XC6EFBBFF) Hex값으로 Color 설정하기 0x + Hex값
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10) ,
          boxShadow: [ // 여러개 줄 수 있음 offset으로 위치 조절 가능
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: const Offset(6,6), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color: Colors.blue.withOpacity(0.3), offset: const Offset(-6,-6), blurRadius: 10, spreadRadius: 10)
          ]
      ),
      child: Center(child: Container(
          color: Colors.yellow,
          child: const Text('Hello Container')
      )),
    );
  }
}