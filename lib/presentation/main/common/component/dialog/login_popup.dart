import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPopup extends StatelessWidget {
  const LoginPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('로그인이 필요한 서비스 입니다.', style: TextStyle(fontSize: 25)),
        content: Text('서비스이용을 위해 로그인이 필요합니다.\n로그인 하시겠습니까?', style: TextStyle(fontSize: 20)),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('취소', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          TextButton(
            onPressed: () async {
              await context.pushNamed('login').then((result)=> context.pop(result));
            },
            child: Text('확인', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          )
        ]
    );
  }
}
