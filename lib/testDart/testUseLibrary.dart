import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//외부라이브러리 (english_words) 사용해보기
//generateWordPairs활용
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
    return const Center(
      child: RandomWords(),
    );
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList(); // random으로 word 5개를 가지고 온다.
    final widgets = wordList.map((word) => Text(word.asCamelCase, style: const TextStyle(fontSize: 32),)).toList(); // List로 textwidget list를 만든다.

    return Column(
      children: widgets,
    );
  }
}