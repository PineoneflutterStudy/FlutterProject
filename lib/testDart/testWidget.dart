import 'package:flutter/material.dart';

// widget( appbar, floatingActionButton )만들어 보기
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            print('Tab');
          },
        ),
        const Icon(Icons.play_arrow)
      ], centerTitle: false, title: const Text('This is App bar')),
      body: const TestWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.bug_report),
        onPressed: () {
          print('Tab! FAB!');
        },
      ),
    ), // Scaffold - 기본, 도화지
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            fontSize: 60,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}