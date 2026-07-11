import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/rl_app.dart';

void main() {
  testWidgets('HomePage renders mobile layout below the desktop breakpoint', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(
      ResponsiveLayoutBuilder.minDesktopWidth - 1.0,
      600,
    );
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const RlApp());
    await tester.pumpAndSettle();

    expect(find.text('Mobile home page'), findsOneWidget);
    expect(find.text('Desktop home page'), findsNothing);
  });

  testWidgets('HomePage renders desktop layout at the desktop breakpoint', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(
      ResponsiveLayoutBuilder.minDesktopWidth,
      600,
    );
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const RlApp());
    await tester.pumpAndSettle();

    expect(find.text('Desktop home page'), findsOneWidget);
    expect(find.text('Mobile home page'), findsNothing);
  });
}
