import 'package:flutter/material.dart';

abstract final class RlAppConfig {
  static const Color colorSeed = .new(
    int.fromEnvironment(
      'COLOR_SEED',
      defaultValue: 0xFFFF5722,
    ),
  );
}
