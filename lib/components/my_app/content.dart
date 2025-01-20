import 'package:flutter/material.dart';
import 'package:lista_tarefas_alura_2025/components/my_app/dificulty.dart';

class Content extends StatefulWidget {
  final String text;
  final String namePicture;
  final int dificulty;
  const Content(this.text, this.dificulty,
      {required this.namePicture, super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int lv = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(4)),
                ),
                height: 100,
                width: 72,
                child: Image.asset(
                  "assets/images/${widget.namePicture}",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.text,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Dificulty(widget.dificulty),
                  ],
                ),
              ),
              SizedBox(
                height: 65,
                width: 65,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      lv++;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_drop_up_outlined),
                      const Text("up"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 200,
                  child: LinearProgressIndicator(
                    color: Colors.black54,
                    value: lv / (5 * (widget.dificulty + 1)),
                    backgroundColor: Colors.white70,
                  ),
                ),
                Text(
                  "Nível: $lv",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white70,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
