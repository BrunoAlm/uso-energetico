import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    required this.maxWidth,
    this.maxHeight = 80,
    required this.hintText,
    required this.controller,
  }) : super(key: key);
  final String hintText;
  final double maxWidth;
  final double maxHeight;
  final TextEditingController controller;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorWidth: 5,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxWidth: widget.maxWidth,
          maxHeight: widget.maxHeight,
        ),
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
