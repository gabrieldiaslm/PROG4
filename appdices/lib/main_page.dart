import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('**** build()');
    final rnd = Random();
    int leftDice = 1;
    int rightDice = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados Rolantes'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            leftDice = rnd.nextInt(6) + 1;
            rightDice = rnd.nextInt(6) + 1;

            debugPrint('left : $leftDice\nright: $rightDice\n');
          },
          child: Row(
            children: [
              Expanded(
                flex: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Image.asset('assets/images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                flex: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Image.asset('assets/images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}