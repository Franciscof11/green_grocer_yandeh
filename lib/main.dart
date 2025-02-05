import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_grocer_yandeh/core/utils/ui_controller.dart';
import 'package:green_grocer_yandeh/features/home_page/data/sections_repository.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/cubit/section_cubit.dart';
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
      home: RepositoryProvider(
        create: (context) => SectionsRepository(),
        child: BlocProvider(
          create: (context) => SectionCubit(
            repository: context.read<SectionsRepository>(),
          )..getAllSections(),
          child: uiController.isMobile ? HomeMobile() : HomeWeb(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
