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
          leading: Icon(Icons.account_balance_outlined),
          title: const Text('Lista de Tarefas'),
        ),
        body: ListView(
          children: [
            Task(
                'Math',
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                4),
            Task(
                "Dart",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                3),
            Task(
                "FLutter",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                4),
            Task(
                "Python",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                3),
            Task(
                "Docker",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                4),
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
  final String pictureUrl;
  final int dificulty;
  const Task(this.text, this.pictureUrl, this.dificulty, {super.key});

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
                          child: Image.network(
                            widget.pictureUrl,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    widget.dificulty >= 1
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    widget.dificulty >= 2
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    widget.dificulty >= 3
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    widget.dificulty >= 4
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    widget.dificulty >= 5
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
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
              )
            ],
          ),
        ));
  }
}
