import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

QueryExecutor openConnection() {
  return DatabaseConnection.delayed(
    Future(() async {
      final WasmDatabaseResult result = await WasmDatabase.open(
        databaseName: 'rl_database',
        sqlite3Uri: .parse('sqlite3.wasm'),
        driftWorkerUri: .parse('drift_worker.js'),
      );

      return result.resolvedExecutor;
    }),
  );
}
