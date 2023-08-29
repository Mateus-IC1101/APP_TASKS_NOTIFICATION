import 'package:flutter/material.dart';
import 'package:flutter_desempenho/store/task_store.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final taskStore = TaskStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Container(
            child: Center(
          child: Column(
            children: [
              Observer(builder: (_) {
                return Text('${taskStore.counter}');
              }),
              ElevatedButton(
                  onPressed: () {
                    taskStore.increment();
                  },
                  child: Icon(Icons.add))
            ],
          ),
        )));
  }
}
