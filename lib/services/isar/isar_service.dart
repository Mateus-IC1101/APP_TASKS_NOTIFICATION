import 'package:flutter_desempenho/entities/task_entity.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService{
  late Future<Isar> db;
  

  IsarService(){
    db = openDB();
  }

  Future<Isar> openDB() async {
    
    final dir = await getApplicationDocumentsDirectory();

    if(Isar.instanceNames.isEmpty){
      return await Isar.open([TaskEntitySchema], directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> saveOneTask(TaskEntity task) async{
    final isar = await db;
    isar.writeTxnSync(() => isar.taskEntitys.putSync(task));
    
  }
   Future<void> saveMultipleTask(List<TaskEntity> tasks) async{
    final isar = await db;
    isar.writeTxnSync(() => isar.taskEntitys.putAllSync(tasks));
    
  }
}