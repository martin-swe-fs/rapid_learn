// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rl_database.dart';

// ignore_for_file: type=lint
abstract class _$RlDatabase extends GeneratedDatabase {
  _$RlDatabase(QueryExecutor e) : super(e);
  $RlDatabaseManager get managers => $RlDatabaseManager(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [];
}

class $RlDatabaseManager {
  final _$RlDatabase _db;
  $RlDatabaseManager(this._db);
}
