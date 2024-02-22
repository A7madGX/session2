import 'package:flutter/material.dart';

class GTextField extends StatelessWidget {
  final int? value;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextEditingController controller;
  const GTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    required this.controller,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: ValueKey(value),
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white10.withOpacity(0.05),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
