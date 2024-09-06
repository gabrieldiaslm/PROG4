import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.orangeAccent,
          width: double.infinity,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 25.0, 
              child:Text('img'),
              ),
              Text('NOME DA PESSOA'),
              Text('PROFISSÃO'),
              Text('---------'),
              Text('TELEFONE'),
              Text('E-MAIL'),
        ],
    )));
  }
}
