import 'package:mobx/mobx.dart';
part 'task_store.store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  @observable
  var _counter = 0;

  @computed
  int get counter => _counter;

  @action
  void increment() {
    _counter++;
  }
}
