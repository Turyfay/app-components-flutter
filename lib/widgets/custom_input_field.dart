import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? helperText;
  final String? hintText;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? countetText;
  final String? initialValue;
  final TextInputType inputType;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.helperText,
    this.hintText,
    this.icon,
    this.suffixIcon,
    this.countetText,
    this.initialValue,
    required this.inputType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,

        helperText: helperText,
        hintText: hintText,
        counterText: countetText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.account_circle_outlined),
        icon: icon == null ? null : Icon(icon),
      ),
      keyboardType: inputType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      autocorrect: true,
      autofocus: true,
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) {
          return 'El nombre es requerido';
        }
        return value.length < 3 ? 'El nombre es muy corto' : null;
      },
    );
  }
}
