@TestOn('browser')
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:frontend/router/rl_path_strategy.dart';
import 'package:web/web.dart';

void main() {
  test('rlPathStrategy activates the path URL strategy', () {
    document.head!.append(HTMLBaseElement()..href = '/');

    rlPathStrategy();

    expect(urlStrategy, isA<PathUrlStrategy>());
  });
}
