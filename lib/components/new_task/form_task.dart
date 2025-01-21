import 'package:flutter/material.dart';

class FormTask extends StatefulWidget {
  const FormTask({super.key});

  @override
  State<FormTask> createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dificultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 25,
      children: [
        TextFormField(
          controller: nameController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: "Nome",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            hintText: "Digite o nome",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: Colors.white70,
            filled: true,
          ),
        ),
        TextFormField(
          controller: dificultyController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: "Dificuldade",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            hintText: "Digite a dificuldade: 1, 2, 3, 4 ou 5",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: Colors.white70,
            filled: true,
          ),
        ),
        TextFormField(
          onChanged: (text) {
            setState(() {});
          },
          controller: imageController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: "Imagem",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            hintText: "Digite o nome: (exemplo.png)",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: Colors.white70,
            filled: true,
          ),
        ),
        Container(
          height: 100,
          width: 72,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageController.text,
              errorBuilder:
                  (BuildContext context, Object error, StackTrace? stackTrace) {
                return Image.asset(
                  "assets/images/beija_flor_flutter.png",
                  fit: BoxFit.cover,
                );
              },
              fit: BoxFit.cover,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Adicionar"),
        ),
      ],
    );
  }
}
