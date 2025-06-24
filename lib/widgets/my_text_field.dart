import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final Icon prefixIcon;
  const MyTextField({super.key, required this.hintText, required this.controller, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  prefixIcon: prefixIcon,
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              );
  }
}