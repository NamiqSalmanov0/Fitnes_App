import 'package:flutter/material.dart';

class Mytexttfield extends StatefulWidget {
  const Mytexttfield(
      {super.key, required this.hint, this.controller, required this.visible});
  final String hint;
  final TextEditingController? controller;
  final bool visible;

  @override
  State<Mytexttfield> createState() => _MytexttfieldState();
}

class _MytexttfieldState extends State<Mytexttfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.visible,
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: widget.hint,
      ),
    );
  }
}
