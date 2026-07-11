import 'package:drift/drift.dart';
import 'package:frontend/database/rl_database_connection.dart';

part 'rl_database.g.dart';

@DriftDatabase()
final class RlDatabase extends _$RlDatabase {
  RlDatabase() : super(openConnection());

  RlDatabase.forTesting(super.e);

  @override
  int get schemaVersion => 1;
}
