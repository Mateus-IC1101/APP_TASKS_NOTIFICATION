import 'package:flutter/material.dart';
import 'package:flutter_desempenho/pages/task/create_task_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const CreateTaskPage(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex], bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        backgroundColor: Color.fromARGB(255, 108, 47, 199),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Criar Tarefa',
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Cronograma',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),);
  }
}
