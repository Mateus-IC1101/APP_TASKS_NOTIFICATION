import 'package:flutter/material.dart';
import 'package:flutter_desempenho/home_page.dart';
import 'package:flutter_desempenho/store/temporary_task_store.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

      Provider<TemporaryTaskStore>(create: (_) => TemporaryTaskStore())
    ], child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 247, 247, 248)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ));
  }
}
