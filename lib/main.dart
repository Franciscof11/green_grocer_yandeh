import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/utils/ui_controller.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/pages/home_mobile.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/pages/home_web.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final uiController = UiController(context);

    return MaterialApp(
      home: uiController.isMobile ? HomeMobile() : HomeWeb(),
      debugShowCheckedModeBanner: false,
    );
  }
}
