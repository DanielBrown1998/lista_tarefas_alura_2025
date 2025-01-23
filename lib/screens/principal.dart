import 'package:flutter/material.dart';
import 'package:lista_tarefas_alura_2025/components/principal/task.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List<Widget> tarefas = [
    Task('Math', 4),
    Task("Dart", 3),
    Task("FLutter", 4),
    Task("Python", 3),
    Task("Docker", 4),
  ];

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
      body: ListView(
        children: tarefas +
            [
              SizedBox(
                height: 50,
              ),
            ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white70,
            onPressed: () {
              Navigator.pushNamed(context, '/new_task');
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
