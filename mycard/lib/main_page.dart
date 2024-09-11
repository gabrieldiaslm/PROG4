import 'package:flutter/material.dart';
import 'package:mycard/info_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 139, 71, 255),
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
            Text(
              'ME AJUDE POR FAVOR',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              'CANDIDATO',
              style: TextStyle(
                  color: Colors.white54, fontSize: 10.0, letterSpacing: 2.0),
            ),
            Divider(
              color: Colors.white54,
              thickness: 0.25,
              indent: 80,
              endIndent: 80,
            ),
            InfoCard(icon:(Icons.phone), text: '+XX XX XXXXX-XXXX',),
            InfoCard(icon: Icons.email, text: 'meajudeporfavor@gmail.com'),
            InfoCard(icon: Icons.pin_drop, text: 'Rua dos Bobos, 0', color: Colors.red, backgroundColor: Colors.black,),
          ],
        ),
      ),
    );
  }
}
