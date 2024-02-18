import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/config/application_theme_manager.dart';
import 'package:islamy_app/config/settings_provider.dart';
import 'package:islamy_app/layout/layout_view.dart';
import 'package:islamy_app/modules/hadeth/page/hadeth_details_view.dart';
import 'package:islamy_app/modules/splash/page/splash_view.dart';
import 'package:provider/provider.dart';

import 'modules/quran/page/quran_details.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      title: 'Islamy App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      themeMode: ThemeMode.dark,
      locale: Locale(vm.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
