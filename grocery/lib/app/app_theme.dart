import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData light(primarycolor) {
    return ThemeData(
      useMaterial3: false,
      primaryColor: primarycolor,
    );
  }
}
