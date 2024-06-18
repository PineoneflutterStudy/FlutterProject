import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewRouterPage extends StatelessWidget {
  const NewRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome NewRouterPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () => context.pop(),
            ),
            TextButton(
              child: const Text('Go to NewRouterPage2'),
              onPressed: () => context.pushNamed('new1'),
            ),
          ],
        ),
      ),
    );
  }
}

class NewRouterPage2 extends StatelessWidget {
  const NewRouterPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to NewRouterPage2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                child: const Text('Go to Back'),
                onPressed: ()=> context.pop()),
            TextButton(
                child: const Text('Go to Home'),
                onPressed: ()=> context.goNamed('home'))
          ],
        ),
      ),
    );
  }
}
