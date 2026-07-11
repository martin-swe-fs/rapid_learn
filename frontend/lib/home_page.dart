import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:frontend/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).appTitle),
      ),
      body: const ResponsiveLayoutBuilder(
        mobile: _MobileHomePage(),
        desktop: _DesktopHomePage(),
      ),
    );
  }
}

class _MobileHomePage extends StatelessWidget {
  const _MobileHomePage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context).mobileHomePageTitle),
    );
  }
}

class _DesktopHomePage extends StatelessWidget {
  const _DesktopHomePage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context).desktopHomePageTitle),
    );
  }
}
