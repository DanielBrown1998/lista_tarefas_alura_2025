import 'package:flutter/material.dart';
import 'package:lista_tarefas_alura_2025/screens/new_task.dart';
//import 'package:lista_tarefas_alura_2025/screens/principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String titleMaterial = "Flutter Alura";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleMaterial,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FormScreen(),
    );
  }
}
