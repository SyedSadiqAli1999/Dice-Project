import 'package:flutter/material.dart';

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
  int leftDice=1,rightDice=2;

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
              onPressed: (){
                if(leftDice==5){
                  leftDice=1;
                 }
                  else{
                    leftDice+=2;
                    }
                  setState(() {
                  leftDice;
                  },);
                },
                   
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$rightDice.png',
              ),onPressed: (){
                if(rightDice==6){
                  rightDice=2;
                }
                else{
                 rightDice+=2; 
                }
                setState(() {
                  rightDice;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
