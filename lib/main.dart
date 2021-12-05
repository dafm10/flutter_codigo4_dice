import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int numberDiceLeft = 1;
  int numberDiceRight = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text("Dice App"),
        ),
        body: Center( // centra todo el contenido de row
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Image.asset(
                    "assets/images/dice$numberDiceLeft.png",
                  ),
                  onPressed: () {
                    numberDiceLeft = Random().nextInt(6) + 1;
                    numberDiceRight = Random().nextInt(6) + 1;
                    setState((){});
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Image.asset(
                    "assets/images/dice$numberDiceRight.png",
                  ),
                  onPressed: () {
                    numberDiceRight = Random().nextInt(6) + 1;
                    numberDiceLeft = Random().nextInt(6) + 1;
                    setState((){});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}