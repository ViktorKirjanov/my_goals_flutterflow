import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'my_goals',
      'MyGoals.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetGoalsRow>> getGoals() => performGetGoals(
        _database,
      );

  Future<List<GetTasksRow>> getTasks({
    int? goalId,
  }) =>
      performGetTasks(
        _database,
        goalId: goalId,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insertGoal({
    String? title,
    String? description,
    String? status,
    int? created,
  }) =>
      performInsertGoal(
        _database,
        title: title,
        description: description,
        status: status,
        created: created,
      );

  Future insertTask({
    int? goalId,
    String? title,
    String? description,
    int? created,
  }) =>
      performInsertTask(
        _database,
        goalId: goalId,
        title: title,
        description: description,
        created: created,
      );

  Future incrementGoalTasks({
    int? goalId,
  }) =>
      performIncrementGoalTasks(
        _database,
        goalId: goalId,
      );

  Future updateTaskStatus({
    int? taskId,
    int? isCompleted,
  }) =>
      performUpdateTaskStatus(
        _database,
        taskId: taskId,
        isCompleted: isCompleted,
      );

  Future deleteTask({
    int? taskId,
  }) =>
      performDeleteTask(
        _database,
        taskId: taskId,
      );

  Future decrementGoalTasks({
    int? goalId,
  }) =>
      performDecrementGoalTasks(
        _database,
        goalId: goalId,
      );

  Future deleteGoal({
    int? goalId,
  }) =>
      performDeleteGoal(
        _database,
        goalId: goalId,
      );

  Future updateTask({
    int? taskId,
    String? title,
    String? description,
  }) =>
      performUpdateTask(
        _database,
        taskId: taskId,
        title: title,
        description: description,
      );

  Future updateGoal({
    int? goalId,
    String? title,
    String? description,
  }) =>
      performUpdateGoal(
        _database,
        goalId: goalId,
        title: title,
        description: description,
      );

  Future incrementCompletedTasks({
    int? goalId,
  }) =>
      performIncrementCompletedTasks(
        _database,
        goalId: goalId,
      );

  Future decrementCompletedTasks({
    int? goalId,
  }) =>
      performDecrementCompletedTasks(
        _database,
        goalId: goalId,
      );

  /// END UPDATE QUERY CALLS
}
