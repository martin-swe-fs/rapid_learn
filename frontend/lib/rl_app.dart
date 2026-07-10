import 'package:flutter/material.dart';
import 'package:frontend/l10n/app_localizations.dart';

class RlApp extends StatelessWidget {
  const RlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
