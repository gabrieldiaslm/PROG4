import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import './icon_text_form_field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const products = ['Ruptdor Divino', 'Quebra-passos', 'Hemodrenário', 'Garra do Espreitador', 'Morellonomicon'];
    final categories = products.map((name) => FadeAnimatedText(name, textStyle: TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.yellow,))
    );

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: theme.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Green',
                          style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TextSpan(
                          text: 'Grocery',
                          style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                    ])),
                    SizedBox(
                      height: 30.0,
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: categories.toList(),
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 40.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: IconTextFormField(
                      labelText: 'E-mail',
                      icon: Icons.email,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: IconTextFormField(
                      labelText: 'Senha',
                      icon: Icons.lock,
                      isSecret: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.primaryColor,
                          minimumSize: const Size.fromHeight(48.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        onPressed: () {
                          debugPrint('entrar');
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.red),
                        onPressed: () {
                          debugPrint('Esqueci a senha');
                        },
                        child: const Text('Esqueci a senha')),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(128),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'OU',
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(128),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          minimumSize: const Size.fromHeight(48.0),
                          foregroundColor: theme.primaryColor,
                          side:
                              BorderSide(color: theme.primaryColor, width: 2.0),
                        ),
                        onPressed: () {
                          debugPrint('criar conta');
                        },
                        child: const Text(
                          'Criar Conta',
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
