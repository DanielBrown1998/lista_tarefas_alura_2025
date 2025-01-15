import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alura',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Math'),
            Task("Dart"),
            Task("FLutter"),
            Task("Python"),
            Task("Docker"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String text;
  const Task(this.text, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  dynamic lv = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 140,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black26,
                          height: 100,
                          width: 72,
                        ),
                        Container(
                          width: 200,
                          alignment: Alignment.center,
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              lv++;
                            });
                          },
                          child: const Icon(Icons.arrow_drop_up_outlined),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 200,
                              child: LinearProgressIndicator(
                                color: Colors.white70,
                                value: lv/20,
                                backgroundColor: Colors.black54,
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
                        )
                      ),
                ],
              )
            ],
          ),
        ));
  }
}
