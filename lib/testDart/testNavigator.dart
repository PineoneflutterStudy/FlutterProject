import 'package:flutter/material.dart';
import 'package:flutter_project_team1/testDart/screen/new_page.dart';

//페이지 이동방법 2
void main() {
  runApp(const MaterialApp(home: HomeWidget()));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

//Navigator 해서 페이지 이동하기
class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 화면 이동하기 2'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            //NewPage로 페이지 이동 - push
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewPage()));
          },
        ),
      ),
    );
  }
}