import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    Key? key,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.validator,
    this.obscureText = false,
  }) : super(key: key);

  final String? hintText;
  final bool obscureText;
  final String? labelText;
  final Function(String)? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
