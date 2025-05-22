import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GET GOALS
Future<List<GetGoalsRow>> performGetGoals(
  Database database,
) {
  final query = '''
SELECT * FROM goals
ORDER BY id ASC;
''';
  return _readQuery(database, query, (d) => GetGoalsRow(d));
}

class GetGoalsRow extends SqliteRow {
  GetGoalsRow(Map<String, dynamic> data) : super(data);

  int get id => data['id'] as int;
  String get title => data['title'] as String;
  String? get description => data['description'] as String?;
  int get totalTasks => data['total_tasks'] as int;
  int get totalComplited => data['total_complited'] as int;
  bool get archived => data['archived'] as bool;
  String get status => data['status'] as String;
  int get createdAt => data['created_at'] as int;
}

/// END GET GOALS

/// BEGIN GET TASKS
Future<List<GetTasksRow>> performGetTasks(
  Database database, {
  int? goalId,
}) {
  final query = '''
SELECT * FROM tasks
WHERE goal_id = ${goalId}
ORDER BY id ASC;
''';
  return _readQuery(database, query, (d) => GetTasksRow(d));
}

class GetTasksRow extends SqliteRow {
  GetTasksRow(Map<String, dynamic> data) : super(data);

  int get id => data['id'] as int;
  int get goalId => data['goal_id'] as int;
  String get title => data['title'] as String;
  String? get description => data['description'] as String?;
  int get createdAt => data['created_at'] as int;
  int get isCompleted => data['is_completed'] as int;
}

/// END GET TASKS
