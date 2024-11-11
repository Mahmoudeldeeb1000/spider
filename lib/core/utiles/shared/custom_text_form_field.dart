
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.minLine = 1,
    this.maxLine = 1,
    this.onChanged,
    this.validator,
    this.initialValue,
    this.border,
    this.enabledBorder,
    this.focusBorder,
    this.suffixIcon,
    required this.hintText,
    this.fillColor,
    this.prefix,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.onSaved,
  });

  final String hintText;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final int minLine;
  final int maxLine;
  final void Function(String)? onChanged;
  final String? initialValue;
  final Widget? suffixIcon;
  final bool obscureText;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusBorder;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefix,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: fillColor ?? Colors.black,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
