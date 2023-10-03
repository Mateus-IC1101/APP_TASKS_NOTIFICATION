import 'package:flutter_desempenho/models/task_model.dart';
import 'package:mobx/mobx.dart';
part 'task_store.store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  @observable
  var _counter = 0;

  @observable
  ObservableList<TaskModel> _tasks = ObservableList<TaskModel>.of([]);

  @computed
  List<TaskModel> get tasks => _tasks;

  @action
  void addTask(TaskModel task) {  
    _tasks.add(task);
  }
}
