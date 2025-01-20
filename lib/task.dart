import 'package:flutter/material.dart';

import 'package:lista_tarefas_alura_2025/content.dart';

class Task extends StatelessWidget {
  final String text;
  final String pictureUrl;
  final int dificulty;
  const Task(this.text, this.pictureUrl, this.dificulty, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue,
                ),
              ),
              Content(text, dificulty, pictureUrl: pictureUrl)
            ],
          ),
        ));
  }
}