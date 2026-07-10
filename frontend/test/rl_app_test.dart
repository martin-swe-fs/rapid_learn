import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/rl_app.dart';

void main() {
  testWidgets('RlApp renders scaffold', (tester) async {
    await tester.pumpWidget(const RlApp());

    expect(find.byType(Scaffold), findsOneWidget);
  });
}
