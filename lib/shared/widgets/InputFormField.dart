import 'package:flutter/material.dart';

class buildFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  IconData? suffixIcon;
  buildFormField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            24,
          ),
          borderSide: const BorderSide(color: Colors.blueAccent, width: 5),
          gapPadding: 10,
        ),
      ),
    );
  }
}
