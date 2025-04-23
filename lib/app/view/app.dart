import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/l10n/arb/app_localizations.dart';

import 'package:favo_resto/onboarding/view/onboarding_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: const AppTheme().theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const OnBoardingPage(),
    );
  }
}
