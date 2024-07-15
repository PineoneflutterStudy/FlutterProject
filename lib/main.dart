import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project_team1/service_locator.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'core/theme/theme_data.dart';
import 'presentation/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig

  await dotenv.load(fileName: '.env');
  AuthRepository.initialize(appKey: dotenv.env['KAKAO_JAVA_SCRIPT_KEY'] ?? '');

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
