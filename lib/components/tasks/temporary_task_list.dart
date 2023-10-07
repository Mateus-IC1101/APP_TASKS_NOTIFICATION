import 'package:flutter/material.dart';
import 'package:flutter_desempenho/entities/task_entity.dart';
import 'package:flutter_desempenho/store/temporary_task_store.store.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class TemporaryTaskList extends StatelessWidget {
  TaskEntity task_current;
  int indexTask;
  TemporaryTaskList({super.key, required this.task_current, required this.indexTask});

  @override
  Widget build(BuildContext context) {
    final taskStore = Provider.of<TemporaryTaskStore>(context);
    return Card(
      color: Color.fromARGB(255, 38, 38, 39),
      elevation: 2, // Sombra do card
      margin: EdgeInsets.only(top: 10), // Margem ao redor do card
      child: Padding(
        padding: EdgeInsets.all(16), // Preenchimento interno do card
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Expanded(child: Text(
          task_current.content,
          // softWrap: false,
        // maxLines: 3,
          style: TextStyle(
            color: Colors.white, // Cor do texto
            fontSize: 16, // Tamanho da fonte
          ),
        ),),
        IconButton(onPressed: (){
          taskStore.removeTask(indexTask);
        }, icon: Icon(Icons.delete, color: Colors.red, size: 30.0,))
        ],)
      ),
    );
  }
}
