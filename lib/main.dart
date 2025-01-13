import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.white,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                ),
                Container( 
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              height: 30,
              child: Text(
                "Codando FLutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              ),
            ElevatedButton(
              onPressed: () => print("Clicou"),
              child: Text("Clique aqui"),
            ),
          ],
        )
      )     
    );
  }
}
