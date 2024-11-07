import 'package:flutter/material.dart';

class IconTextFormField extends StatelessWidget {
  final String? labelText;
  final IconData? icon;
  final bool isSecret;

  const IconTextFormField(
      {
      super.key, 
      this.labelText, 
      this.icon, 
      this.isSecret= false
      }
    );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isSecret,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(icon),                 //resolver onPressed
          suffixIcon: isSecret ? IconButton(onPressed: onPressed, icon: const Icon(Icons.visibility)),
          labelText: labelText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(18.0))),
        ));
  }
}
