import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/rl_app.dart';

void main() {
  testWidgets('RlApp renders scaffold', (tester) async {
    await tester.pumpWidget(const RlApp());

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.text('Rapid Learn'), findsOneWidget);
  });

  testWidgets(
    'RlApp provides Material3 light theme',
    (tester) async {
      tester.platformDispatcher.platformBrightnessTestValue = .light;
      addTearDown(tester.platformDispatcher.clearPlatformBrightnessTestValue);

      await tester.pumpWidget(const RlApp());

      final ThemeData theme = Theme.of(
        tester.element(find.byType(Scaffold)),
      );

      expect(theme.useMaterial3, true);
      expect(theme.brightness, Brightness.light);
    },
  );

  testWidgets('RlApp provides Material3 black theme', (tester) async {
    tester.platformDispatcher.platformBrightnessTestValue = .dark;
    addTearDown(tester.platformDispatcher.clearPlatformBrightnessTestValue);

    await tester.pumpWidget(const RlApp());

    final ThemeData theme = Theme.of(tester.element(find.byType(Scaffold)));

    expect(theme.useMaterial3, true);
    expect(theme.brightness, Brightness.dark);
  });
}
