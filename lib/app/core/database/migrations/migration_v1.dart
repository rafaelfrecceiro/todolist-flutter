import 'package:sqflite/sqflite.dart';
import 'package:todolist_flutter/app/core/database/migrations/migration.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      create table todo(
        id Integer primary key autoincrement,
        description varchar(500) not null,
        date datetime,
        finished integer
      )
    ''');
  }

  @override
  void update(Batch batch) {}
}
