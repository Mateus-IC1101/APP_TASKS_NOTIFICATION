import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldAddTask extends StatelessWidget {
  TextEditingController taskBodyController = TextEditingController();

  TextFormFieldAddTask({super.key, required this.taskBodyController});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: taskBodyController,
        decoration: InputDecoration(
          labelText: 'Tarefa',
          labelStyle: TextStyle(color: Colors.white),
          // hintText: 'Digite a Tarefa',
          prefixIcon: Icon(
            Icons.task,
            color: Color.fromARGB(255, 226, 161, 10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 226, 161, 10)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusColor: Colors.red,
          hoverColor: Colors.red,
        ));
  }
}
