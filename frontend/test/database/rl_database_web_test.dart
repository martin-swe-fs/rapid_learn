@TestOn('browser')
library;

import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/database/rl_database.dart';

void main() {
  test('RlDatabase opens on wasm and runs a query', () async {
    final WasmDatabaseResult result = await WasmDatabase.open(
      databaseName: 'rl_database_test',
      sqlite3Uri: .parse('/web/sqlite3.wasm'),
      driftWorkerUri: .parse('/web/drift_worker.js'),
    );

    final RlDatabase database = .forTesting(result.resolvedExecutor);
    addTearDown(database.close);

    final QueryRow row = await database
        .customSelect('SELECT 0 AS test')
        .getSingle();

    expect(row.read<int>('test'), 0);
  });
}
