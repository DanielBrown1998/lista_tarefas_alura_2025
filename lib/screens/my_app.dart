import 'package:flutter/material.dart';
import 'package:lista_tarefas_alura_2025/components/my_app/task.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});  
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  bool opacidade = true;
  String titleMaterial = "Flutter Alura";
  String titleAppbar = "Lista de Tarefas";

  List<Task> tarefas = [
    Task('Math',
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 4),
    Task("Dart",
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 3),
    Task("FLutter",
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 4),
    Task("Python",
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 3),
    Task("Docker",
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 4),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleMaterial,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_balance_outlined),
          title: Text(titleAppbar),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : .025,
          duration: Duration(milliseconds: 300),
          child: ListView(
            children: tarefas,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
