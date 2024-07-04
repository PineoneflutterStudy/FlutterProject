import 'package:flutter/material.dart';
import 'package:flutter_project_team1/service_locator.dart';
import 'core/theme/theme_data.dart';
import 'presentation/routes/routes.dart';

void main() {
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
