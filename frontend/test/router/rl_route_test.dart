import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/router/rl_route.dart';

void main() {
  group('RlRoute', () {
    test('home path is /', () {
      expect(RlRoute.home.path, '/');
    });
  });
}
