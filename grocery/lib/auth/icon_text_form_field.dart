import 'package:flutter/material.dart';
import 'package:grocery/auth/sign_up_page.dart';

class IconTextFormField extends StatefulWidget {
  final String? labelText;
  final IconData? icon;
  final bool isSecret;
  final EdgeInsetsGeometry margin;
  final IconTextFormFiedlType? fieldType;

  const IconTextFormField({
    super.key,
    this.labelText,
    this.icon,
    this.isSecret = false,            //socorro
    this.margin = EdgeInsets.zero,
    this.fieldType //falta fazer alguma coisa aqui,
  });

  @override
  State<IconTextFormField> createState() => _IconTextFormFieldState();
}

class _IconTextFormFieldState extends State<IconTextFormField> {
  bool obscuredText = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    obscuredText = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: TextFormField(
        obscureText: obscuredText,
        decoration: InputDecoration(
          isDense: true,
          labelText: widget.labelText,
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    obscuredText
                        ? debugPrint('visibilidade on')
                        : debugPrint('visibilidade off');
                    setState(() {
                      obscuredText = !obscuredText;
                    });
                  },
                  icon: Icon(
                      obscuredText ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
        ),
      ),
    );
  }
}
