import 'package:flutter/material.dart';
import 'package:frontend/l10n/app_localizations.dart';
import 'package:frontend/rl_app_config.dart';

class RlApp extends StatelessWidget {
  const RlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context).appTitle),
            ),
          );
        },
      ),
    );
  }
}
