import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome new Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () {
                //이전페이지로 이동 - pop
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Go to NewPage2'),
              onPressed: () {
                //newPage2 이동
                Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPage2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to NewPage2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                child: const Text('Go to Back'),
                onPressed: (){
                  //이전페이지
                  Navigator.pop(context);
                }),
            TextButton(
                child: const Text('Go to Home'),
                onPressed: (){
                  //홈으로, 첫 페이지로
                  Navigator.popUntil(context, (route) => route.isFirst);
                })
          ],
        ),
      ),
    );
  }
}
