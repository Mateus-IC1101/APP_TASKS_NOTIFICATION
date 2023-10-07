import 'package:flutter_desempenho/entities/task_entity.dart';
import 'package:mobx/mobx.dart';
part 'temporary_task_store.store.g.dart';

class TemporaryTaskStore = TemporaryTaskStoreBase with _$TemporaryTaskStore;

abstract class TemporaryTaskStoreBase with Store {
  @observable
  var _counter = 0;

  @observable
  ObservableList<TaskEntity> _tasks = ObservableList<TaskEntity>.of([]);

  @computed
  List<TaskEntity> get tasks => _tasks;

  @action
  void addTask(TaskEntity task) {  
    _tasks.add(task);
  }
}
