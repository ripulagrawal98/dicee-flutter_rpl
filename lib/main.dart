import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  void ChangeDiceState(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: (){
                ChangeDiceState();

              },
              child: Image.asset('images/dice$leftDiceNumber.png'
              ),
            ),
          ),
          SizedBox(width:10.0,
            height: 10.0,),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: (){
                ChangeDiceState();            },
              child: Image.asset('images/dice$rightDiceNumber.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}



