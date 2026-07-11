import 'package:flutter/material.dart';
import 'package:frontend/l10n/app_localizations.dart';
import 'package:frontend/rl_app_config.dart';
import 'package:frontend/router/rl_router.dart';

class RlApp extends StatelessWidget {
  const RlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: .new(
        useMaterial3: true,
        colorScheme: .fromSeed(
          seedColor: RlAppConfig.colorSeed,
          dynamicSchemeVariant: .fruitSalad,
          brightness: .light,
        ),
      ),
      darkTheme: .new(
        useMaterial3: true,
        colorScheme: .fromSeed(
          seedColor: RlAppConfig.colorSeed,
          dynamicSchemeVariant: .fruitSalad,
          brightness: .dark,
        ),
      ),
      routerConfig: RlRouter.router,
    );
  }
}
