import 'package:flutter/material.dart';

import '../../utils/constants/radius_constats.dart';
import '../../utils/extensions/string_extension.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.hintText,
      this.controller,
      this.prefixSvgIcon,
      this.suffixSvgIcon});

  final String hintText;
  final TextEditingController? controller;
  final String? prefixSvgIcon;
  final String? suffixSvgIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        border: const OutlineInputBorder(
          borderRadius: RadiusConstats.b20,
        ),
        prefixIcon:
           prefixSvgIcon.svg,
        suffixIcon:
           suffixSvgIcon.svg,
      ),
    );
  }
}
