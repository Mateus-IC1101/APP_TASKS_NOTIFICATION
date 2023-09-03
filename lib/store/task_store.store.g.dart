// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on TaskStoreBase, Store {
  Computed<List<TaskModel>>? _$tasksComputed;

  @override
  List<TaskModel> get tasks =>
      (_$tasksComputed ??= Computed<List<TaskModel>>(() => super.tasks,
              name: 'TaskStoreBase.tasks'))
          .value;

  late final _$_counterAtom =
      Atom(name: 'TaskStoreBase._counter', context: context);

  @override
  int get _counter {
    _$_counterAtom.reportRead();
    return super._counter;
  }

  @override
  set _counter(int value) {
    _$_counterAtom.reportWrite(value, super._counter, () {
      super._counter = value;
    });
  }

  late final _$_tasksAtom =
      Atom(name: 'TaskStoreBase._tasks', context: context);

  @override
  ObservableList<TaskModel> get _tasks {
    _$_tasksAtom.reportRead();
    return super._tasks;
  }

  @override
  set _tasks(ObservableList<TaskModel> value) {
    _$_tasksAtom.reportWrite(value, super._tasks, () {
      super._tasks = value;
    });
  }

  late final _$TaskStoreBaseActionController =
      ActionController(name: 'TaskStoreBase', context: context);

  @override
  void addTask(TaskModel task) {
    final _$actionInfo = _$TaskStoreBaseActionController.startAction(
        name: 'TaskStoreBase.addTask');
    try {
      return super.addTask(task);
    } finally {
      _$TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks}
    ''';
  }
}
