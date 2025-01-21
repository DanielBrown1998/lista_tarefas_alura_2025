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

  bool opacidade = true;


  String titleAppbar = "Lista de Tarefas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_balance_outlined),
          title: Text(titleAppbar),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : .025,
          duration: Duration(milliseconds: 300),
          child: ListView(
            children: tarefas +
                [
                  SizedBox(
                    height: 50,
                  ),
                ],
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
      );
  }
}


  
