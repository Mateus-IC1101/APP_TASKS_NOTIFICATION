import 'package:flutter/material.dart';
import 'package:flutter_desempenho/constants/app_colors.dart';

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
          labelStyle: TextStyle(color: AppColors.whitePrimary),
          // hintText: 'Digite a Tarefa',
          prefixIcon: Icon(
            Icons.task,
            color: AppColors.orangePrimary,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.orangePrimary),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusColor: Colors.red,
          hoverColor: Colors.red,
        ));
  }
}
