import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Page'),
          centerTitle: true,
        ),
        body: Dicepage(),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDice = 1, rightDice = 2;

  void diceState() {
    setState(
      () {
        leftDice = Random().nextInt(6) + 1;
        rightDice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$leftDice.png',
              ),
              onPressed: () {
                diceState();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$rightDice.png',
              ),
              onPressed: () {
                diceState();
              },
            ),
          ),
        ],
      ),
    );
  }
}
