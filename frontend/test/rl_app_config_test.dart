import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/rl_app_config.dart';

void main() {
  test(
    'RlAppConfig provides 0xFFFF5722 as the default color seed',
    () {
      expect(
        RlAppConfig.colorSeed.toARGB32(),
        0xFFFF5722,
      );
    },
    skip: const bool.hasEnvironment('COLOR_SEED'),
  );

  test(
    'RlAppConfig reads COLOR_SEED as the color seed',
    () {
      expect(
        RlAppConfig.colorSeed.toARGB32(),
        const int.fromEnvironment('COLOR_SEED'),
      );
    },
    skip: !const bool.hasEnvironment('COLOR_SEED'),
  );
}
