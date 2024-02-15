import 'package:flutter/material.dart';
import 'package:islamy_app/config/application_theme_manager.dart';
import 'package:islamy_app/layout/layout_view.dart';
import 'package:islamy_app/modules/splash/page/splash_view.dart';

import 'modules/quran/page/quran_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamy App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
    );
  }
}
