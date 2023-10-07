// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporary_task_store.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TemporaryTaskStore on TemporaryTaskStoreBase, Store {
  Computed<List<TaskEntity>>? _$tasksComputed;

  @override
  List<TaskEntity> get tasks =>
      (_$tasksComputed ??= Computed<List<TaskEntity>>(() => super.tasks,
              name: 'TemporaryTaskStoreBase.tasks'))
          .value;

  late final _$_counterAtom =
      Atom(name: 'TemporaryTaskStoreBase._counter', context: context);

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
      Atom(name: 'TemporaryTaskStoreBase._tasks', context: context);

  @override
  ObservableList<TaskEntity> get _tasks {
    _$_tasksAtom.reportRead();
    return super._tasks;
  }

  @override
  set _tasks(ObservableList<TaskEntity> value) {
    _$_tasksAtom.reportWrite(value, super._tasks, () {
      super._tasks = value;
    });
  }

  late final _$TemporaryTaskStoreBaseActionController =
      ActionController(name: 'TemporaryTaskStoreBase', context: context);

  @override
  void addTask(TaskEntity task) {
    final _$actionInfo = _$TemporaryTaskStoreBaseActionController.startAction(
        name: 'TemporaryTaskStoreBase.addTask');
    try {
      return super.addTask(task);
    } finally {
      _$TemporaryTaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(int indexTask) {
    final _$actionInfo = _$TemporaryTaskStoreBaseActionController.startAction(
        name: 'TemporaryTaskStoreBase.removeTask');
    try {
      return super.removeTask(indexTask);
    } finally {
      _$TemporaryTaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks}
    ''';
  }
}
