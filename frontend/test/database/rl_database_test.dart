@TestOn('vm')
library;

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/database/rl_database.dart';

void main() {
  test('RlDatabase opens in memory and runs a query', () async {
    final RlDatabase database = .forTesting(NativeDatabase.memory());
    addTearDown(database.close);

    final QueryRow row = await database
        .customSelect('SELECT 0 AS test')
        .getSingle();

    expect(row.read<int>('test'), 0);
  });
}
