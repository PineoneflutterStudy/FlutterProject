import 'package:flutter/material.dart';

import '../style/theme.dart';

// theme 사용
// https://m3.material.io/ 참고
void main() {
  runApp(MaterialApp(
    home: const HomeWidget(),
    theme: ThemeData(
      //개인화된 컬러
      // secondary나 다른 것들을 지정안해도 자연스럽게 어울리는 색상으로 자동적용
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: false, // 기본값 - true,
        //appBar의 테마 따로 적용가능
        appBarTheme: const AppBarTheme(backgroundColor: Colors.red)),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    //theme data 가져오기
    final textTheme = Theme.of(context).textTheme;
    // 전연변수로 선언된 custom theme 사용
    final textTheme2 = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 화면 이동하기 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Press Count',
              style: textTheme.bodyLarge,
            ),
            // textTheme가져와 사용하기, 선언안하면 기본값으로 설정됨
            Text(
              '$count',
              style: textTheme.displayLarge,
            )
            // 선언안해도 제공하는 것들 있음, titleLarge 등등
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

// 아래와 같이 변수선언도 별도 style 폴더의 dart파일로 이동해 import해서 사용가능
// 별도 폴더로 분리하는 것이 깔끔해보이니 이동
// final customTheme = ThemeData(
//     //light, dart 테마 설정가능
//     colorScheme: const ColorScheme.light(
//         primary: Colors.indigo, // appbar
//         secondary: Colors.green, // button같은거
//         tertiary: Colors.yellow // 하이라이트 키..?같은 경우
//         ),
//     textTheme: const TextTheme(
//         bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
//         bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)
//     )
// );