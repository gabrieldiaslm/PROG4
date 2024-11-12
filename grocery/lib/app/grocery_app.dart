import 'package:flutter/material.dart';
import 'package:grocery/app/app_routes.dart';
import 'package:grocery/auth/sign_up_page.dart';
import '../app/app_theme.dart';

import '../auth/sign_in_page.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(Colors.green),
      initialRoute: AppRoutes.signIn,
      routes: {
        AppRoutes.signIn: (_) => const SignInPage(),
        AppRoutes.signUp: (_) => const SignUpPage(),
      },
    );
  }
}
