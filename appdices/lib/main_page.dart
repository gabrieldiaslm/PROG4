import 'dart:math';
// por hoje já deu, voltaremos mais fortes
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    int leftDice = rnd.nextInt(6) + 1;
    int rightDice = rnd.nextInt(6) + 1;
    debugPrint('***** build()');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rolling Dices'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 50,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Image.asset('assets/images/dice$leftDice.png'))),
            Expanded(
                flex: 50,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Image.asset('assets/images/dice$rightDice.png'))),
          ],
        ),
      ),
    );
  }
}
