import 'package:flutter/material.dart';

import 'package:lista_tarefas_alura_2025/components/principal/content.dart';

class Task extends StatelessWidget {
  final String text;
  final String namePicture;
  final int dificulty;
  const Task(this.text, this.dificulty, {super.key, this.namePicture="beija_flor_flutter.png"});

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
              Content(text, dificulty, namePicture: namePicture)
            ],
          ),
        ));
  }
}
