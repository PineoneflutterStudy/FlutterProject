import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Callback
// GestureDetector - 입력을 받는 기본 감지기
// InkWell - GestureDetector 보다는 입력받는게 적지만, 클릭 시 UI 자동 적용 되어있는 장점이 있음
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
          title: const Text('Stateless Stateful 차이 비교')),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Count : $value',
        style: const TextStyle(fontSize: 30),
      ),
      TestButton(addCounter) //함수의 이름만 넘겨준다.
    ]);
  }

  void addCounter()=> setState(() => ++value);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  //함수 넘겨줄때 voidcallback 가장 많이 사용됨
  //만약 함수에 인자를 넣고 싶다면 VoidCallback이 아닌 Function(type)형식으로 선언해야함
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: InkWell(
          onTap: () => callback.call(), // 콜백 호출
          child: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Text('Up Counter'))),
        ));
  }
}