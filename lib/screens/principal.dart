import 'package:flutter/material.dart';
import 'package:lista_tarefas_alura_2025/data/task_inherited.dart';
import 'package:lista_tarefas_alura_2025/screens/new_task.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  String titleAppbar = "Lista de Tarefas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white70,
        leading: Icon(Icons.account_balance_outlined),
        title: Text(titleAppbar),
      ),
      body: ListView(children: TaskInherited.of(context)!.taskList),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white70,
            onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (newContext) => FormScreen(taskContext: context)),
              );
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
