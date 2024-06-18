import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 'Stateless Stateful 차이 비교'
// 상태변화에 따라 화면을 바로 갱신해야한다 > Stateful 사용
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
    return const Column(
        children: [
          ExampleStateless(),
          ExampleStateful(index : 3)
        ]);
  }
}

//stless 입력
class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(color: Colors.red),
    );
  }
}

//stful 입력
class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

//모든 변수는 State 상태 객체에 넣어줘야함
class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index; // late == lateinit
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    _index = widget.index; // 상위 index 가져오기
    textController = TextEditingController();
  }

  // == destroy?랑 비슷한 개념인듯
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          setState(() { // 상위에 변화를 보내줘야함 , setState실행 시(변화 시) View 다시 그리기
            if(_index == 5){
              _index = 0;
              return;
            }
            _index ++;
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}