import 'package:sqflite/sqflite.dart';

/// BEGIN INSERT GOAL
Future performInsertGoal(
  Database database, {
  String? title,
  String? description,
  String? status,
  int? created,
}) {
  final query = '''
INSERT INTO goals (title, description, status, created_at)
VALUES ('${title}','${description}','${status}',${created});
''';
  return database.rawQuery(query);
}

/// END INSERT GOAL

/// BEGIN INSERT TASK
Future performInsertTask(
  Database database, {
  int? goalId,
  String? title,
  String? description,
  int? created,
}) {
  final query = '''
INSERT INTO tasks (goal_id, title, description, created_at)
VALUES (${goalId}, '${title}', '${description}', ${created});
''';
  return database.rawQuery(query);
}

/// END INSERT TASK

/// BEGIN INCREMENT GOAL TASKS
Future performIncrementGoalTasks(
  Database database, {
  int? goalId,
}) {
  final query = '''
UPDATE goals
SET total_tasks = total_tasks + 1
WHERE id = ${goalId};
''';
  return database.rawQuery(query);
}

/// END INCREMENT GOAL TASKS

/// BEGIN UPDATE TASK STATUS
Future performUpdateTaskStatus(
  Database database, {
  int? taskId,
  int? isCompleted,
}) {
  final query = '''
UPDATE tasks
SET is_completed = ${isCompleted}
WHERE id = ${taskId};
''';
  return database.rawQuery(query);
}

/// END UPDATE TASK STATUS

/// BEGIN DELETE TASK
Future performDeleteTask(
  Database database, {
  int? taskId,
}) {
  final query = '''
DELETE FROM tasks
WHERE id = ${taskId};
''';
  return database.rawQuery(query);
}

/// END DELETE TASK

/// BEGIN DECREMENT GOAL TASKS
Future performDecrementGoalTasks(
  Database database, {
  int? goalId,
}) {
  final query = '''
UPDATE goals
SET total_tasks = total_tasks - 1
WHERE id = ${goalId};
''';
  return database.rawQuery(query);
}

/// END DECREMENT GOAL TASKS

/// BEGIN DELETE GOAL
Future performDeleteGoal(
  Database database, {
  int? goalId,
}) {
  final query = '''
DELETE FROM goals
WHERE id = ${goalId};
''';
  return database.rawQuery(query);
}

/// END DELETE GOAL

/// BEGIN UPDATE TASK
Future performUpdateTask(
  Database database, {
  int? taskId,
  String? title,
  String? description,
}) {
  final query = '''
UPDATE tasks
SET title = '${title}', description = '${description}'
WHERE id = ${taskId};
''';
  return database.rawQuery(query);
}

/// END UPDATE TASK

/// BEGIN UPDATE GOAL
Future performUpdateGoal(
  Database database, {
  int? goalId,
  String? title,
  String? description,
}) {
  final query = '''
UPDATE goals
SET title = '${title}', description = '${description}'
WHERE id = ${goalId};
''';
  return database.rawQuery(query);
}

/// END UPDATE GOAL

/// BEGIN INCREMENT COMPLETED TASKS
Future performIncrementCompletedTasks(
  Database database, {
  int? goalId,
}) {
  final query = '''
UPDATE goals
SET total_completed = total_completed + 1
WHERE id = ${goalId};
''';
  return database.rawQuery(query);
}

/// END INCREMENT COMPLETED TASKS

/// BEGIN DECREMENT COMPLETED TASKS
Future performDecrementCompletedTasks(
  Database database, {
  int? goalId,
}) {
  final query = '''
UPDATE goals
SET total_completed = total_completed - 1
WHERE id = ${goalId};
''';
  return database.rawQuery(query);
}

/// END DECREMENT COMPLETED TASKS
