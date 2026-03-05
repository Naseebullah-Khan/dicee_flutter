import 'package:flutter/material.dart';

// Primitives Data Types -> String, Integer, Double and Boolean

// we can change data of variable as long as we don't change its data type

// var a; OR dynamic a; -> it has dynamic datatype mean you can assign any types od data

// String a; OR var a = "string" -> only assign string
// int a; OR var a = 1234 -> only assign integer
// bool a; OR var a = false -> only assign boolean
// double a; OR var a = 123.123 -> only assign double

// Recommendation -> Avoid using var or dynamic datatypes unless it is necessary

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.red),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});
  // DicePage({super.key});

  // int leftDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 1;
    int rightDiceNumber = 1;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () => {print("The left dice got tapped!")},
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () => {print("The right dice got tapped!")},
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
