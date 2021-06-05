import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('HAP-HAP'),
          backgroundColor: Colors.red[300],
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
  int leftDiceButton = Random().nextInt(6) + 1;
  int rightDiceButton = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceChange();
              },
              child: Image.asset(
                'images/dice$leftDiceButton.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceChange();
              },
              child: Image.asset(
                'images/dice$rightDiceButton.png',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void diceChange() {
    return setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }
}
