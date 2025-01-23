import 'package:flutter/material.dart';
import 'package:lista_tarefas_alura_2025/components/principal/dificulty.dart';

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
  Color colorBackgroundDefault = Colors.blueGrey;
  Color colorLine = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
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
                height: 48,
                width: 64,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white70,
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      double lineValue = lv / (5 * (widget.dificulty + 1));
                      lv++;
                      if (lineValue < 0.15) {
                        colorBackgroundDefault = Colors.red;
                      } else if (0.15 >= lineValue || lineValue < 0.25) {
                        colorBackgroundDefault = Colors.orange;
                      } else if (0.25 >= lineValue || lineValue < 0.45) {
                        colorBackgroundDefault = Colors.yellow;
                        colorLine = Colors.black;
                      } else if (0.45 >= lineValue || lineValue < 0.65) {
                        colorBackgroundDefault = Colors.lightGreen;
                        colorLine = Colors.black;
                      } else if (0.65 >= lineValue || lineValue < 0.85) {
                        colorBackgroundDefault = Colors.green;
                        colorLine = Colors.white;
                      } else if (0.85 >= lineValue || lineValue < 1) {
                        colorBackgroundDefault = Colors.blue;
                        colorLine = Colors.white;
                      } else if (lineValue >= 1) {
                        colorBackgroundDefault = Colors.deepPurple;
                        colorLine = Colors.white;
                      }
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Colors.white70,
                      ),
                      const Text("up"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: colorBackgroundDefault,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 200,
                    child: LinearProgressIndicator(
                      color: colorLine,
                      value: lv / (5 * (widget.dificulty + 1)),
                      backgroundColor: Colors.white70,
                    ),
                  ),
                  Text(
                    "Nível: $lv",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 17,
                      color: colorLine,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
