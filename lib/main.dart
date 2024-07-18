import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

import 'core/theme/theme_data.dart';
import 'presentation/routes/routes.dart';
import 'service_locator.dart';

void main() async {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();

  // FlutterConfig.loadValueForTesting({'KAKAO_NATIVE_APP_KEY': ''}); // 테스트 필요할 때 사용
  await FlutterConfig.loadEnvVariables();
  AuthRepository.initialize(appKey: FlutterConfig.get('KAKAO_JAVA_SCRIPT_KEY') ?? '');
  KakaoSdk.init(nativeAppKey: FlutterConfig.get('KAKAO_NATIVE_APP_KEY'));

  setLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: CustomThemeData.themeData,
    );
  }
}
