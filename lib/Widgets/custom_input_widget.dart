import 'package:flutter/material.dart';

class CustomInputFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? helperText;
  final String? labelText;
  final IconData? icon;
  final IconData? suffixxIcon;
  final TextInputType? keywordType;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputFieldWidget({
    Key? key,
    this.hintText,
    this.helperText,
    this.labelText,
    this.icon,
    this.suffixxIcon,
    this.keywordType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keywordType,
      obscureText: isPassword,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? 'minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixxIcon == null ? null : Icon(suffixxIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
