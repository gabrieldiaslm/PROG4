import 'package:flutter/material.dart';
import 'package:grocery/auth/icon_text_form_field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            color: theme.primaryColor,
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical:40.0,
              horizontal: 32.0
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: Colors.white
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: IconTextFormField(labelText: 'E-mail',icon: Icons.email,),
                ),
                IconTextFormField(isSecret: true, labelText: 'Senha', icon: Icons.lock,),
              ],
            ),
          ),
        ),
      ],),
      backgroundColor: theme.primaryColor,
    );
  }
}

