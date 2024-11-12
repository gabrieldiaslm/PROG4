import 'package:flutter/material.dart';
import 'package:grocery/auth/icon_text_form_field.dart';

enum IconTextFormFiedlType {
  text,
  password,
  email,
  phone,
  cpf,
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      
      backgroundColor: primaryColor,
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            color: primaryColor,
            child: 
            Center(child: 
              Text(
                'Ai Calica',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0, 
                  fontWeight: FontWeight.bold
                ),
              )
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.0),
                  ),
                ),
          child: Column(
            children: [
              IconTextFormField(labelText: 'E-mail', icon: Icons.email, margin: EdgeInsets.only(bottom: 15.0), fieldType: ),
              IconTextFormField(labelText: 'Senha', icon: Icons.lock, isSecret: true, margin: EdgeInsets.only(bottom: 15.0)),
              IconTextFormField(labelText: 'Nome', icon: Icons.person, margin: EdgeInsets.only(bottom: 15.0),),
              IconTextFormField(labelText: 'Celular', icon: Icons.phone, margin: EdgeInsets.only(bottom: 15.0)),
              IconTextFormField(labelText: 'CPF', icon: Icons.credit_card, margin: EdgeInsets.only(bottom: 15.0)),
              ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            minimumSize: const Size.fromHeight(48.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                          ),
                          onPressed: () {
                            debugPrint('entrar');
                          },
                          child: const Text(
                            'Cadastrar',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          )),
            ],
          ),
          
          ),
        ),
      ],
    ),
    );
  }
}
