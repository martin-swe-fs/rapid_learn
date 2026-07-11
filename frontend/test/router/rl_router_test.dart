import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/home_page.dart';
import 'package:frontend/rl_app.dart';
import 'package:frontend/router/rl_route.dart';
import 'package:frontend/router/rl_router.dart';

void main() {
  group('RlRouter', () {
    testWidgets('/ shows HomePage', (tester) async {
      await tester.pumpWidget(const RlApp());
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });

    test('home route resolves by name to /', () {
      expect(RlRouter.router.namedLocation(RlRoute.home.name), '/');
    });
  });
}
