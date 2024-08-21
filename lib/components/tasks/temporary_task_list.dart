import 'package:flutter/material.dart';
import 'package:flutter_desempenho/constants/app_colors.dart';
import 'package:flutter_desempenho/entities/task_entity.dart';
import 'package:flutter_desempenho/store/temporary_task_store.store.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class TemporaryTaskList extends StatefulWidget {
  TaskEntity task_current;
  int indexTask;
  TemporaryTaskList({
    super.key,
    required this.task_current,
    required this.indexTask,
  });

  @override
  State<TemporaryTaskList> createState() => _TemporaryTaskListState();
}

class _TemporaryTaskListState extends State<TemporaryTaskList> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController timeInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final taskStore = Provider.of<TemporaryTaskStore>(context);
    return Card(
      color: AppColors.blackPrimary,
      elevation: 2, // Sombra do card
      margin: EdgeInsets.only(top: 10), // Margem ao redor do card
      child: Padding(
          padding: EdgeInsets.all(16), // Preenchimento interno do card
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.task_current.content,
                  // softWrap: false,
                  // maxLines: 3,
                  style: TextStyle(
                    color: AppColors.whitePrimary, // Cor do texto
                    fontSize: 16, // Tamanho da fonte
                  ),
                ),
              ),
              IconButton(
                  onPressed: () async {
                    DateTime? pickedDate = await showDatePicker(
                      locale: const Locale('pt', 'BR'),
                      context: context,
                      initialDate:
                          widget.task_current.dateNotification.isNotEmpty
                              ? DateFormat("dd/MM/yyyy")
                                  .parse(widget.task_current.dateNotification)
                              : DateTime.now(),
                      firstDate: DateTime(
                          1800), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(3000),
                      onDatePickerModeChange: (value) => {print('ei')},
                    );
                    if (pickedDate != null) {
                      String formattedDate =
                          DateFormat('dd/MM/yyyy').format(pickedDate);
                      setState(() {
                        dateInput.text = formattedDate
                            .toString(); //set output date to TextField value.
                        widget.task_current.dateNotification = dateInput.text;
                      });
                      print(formattedDate);
                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (pickedTime != null) {
                        timeInput.text = pickedTime.hour.toString() +
                            ':' +
                            pickedTime.minute.toString();
                        print(pickedTime.toString());
                        widget.task_current.timeNotification = timeInput.text;
                      }
                    }
                    print('------------');
                    print(dateInput.text);
                    print(timeInput.text);
                  },
                  icon: Icon(
                    Icons.notification_add,
                    color: Color.fromARGB(255, 35, 155, 69),
                    size: 30.0,
                  )),
              IconButton(
                  onPressed: () {
                    taskStore.removeTask(widget.indexTask);
                  },
                  icon: Icon(
                    Icons.delete,
                    color: AppColors.redPrimary,
                    size: 30.0,
                  ))
            ],
          )),
    );
  }
}
