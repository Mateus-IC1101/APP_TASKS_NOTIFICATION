import 'package:flutter/material.dart';
import 'package:flutter_desempenho/components/inputs/text_form_field_add_task.dart';
import 'package:flutter_desempenho/components/tasks/temporary_task_list.dart';
import 'package:flutter_desempenho/functions/strings/remove_all_spaces.dart';
import 'package:flutter_desempenho/models/task_model.dart';
import 'package:flutter_desempenho/store/task_store.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _taskBodyController = TextEditingController();
  final taskStore = TaskStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Crie Sua Tarefa',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 108, 47, 199),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(10),
                height: 3000,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 250,
                            height: 40,
                            child: TextFormFieldAddTask(
                                taskBodyController: _taskBodyController)),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (removeAllSpaces(
                                      textString: _taskBodyController.text) !=
                                  '') {
                                taskStore.addTask(TaskModel(
                                    content: _taskBodyController.text));
                              }

                              _taskBodyController.text = '';
                            },
                            child: Icon(Icons.add)),
                      ],
                    ),
                    Expanded(
                      child: Observer(builder: (_) {
                        return ListView.builder(
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: taskStore.tasks.length,
                          itemBuilder: (context, index) {
                            TaskModel task_current = taskStore.tasks[index];
                            return TemporaryTaskList(
                                task_current: task_current);
                          },
                        );
                      }),
                    ),
                  ],
                ))));
  }
}
