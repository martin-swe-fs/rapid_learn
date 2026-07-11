import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

QueryExecutor openConnection() {
  return LazyDatabase(() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = .new(path.join(directory.path, 'rl_database.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
