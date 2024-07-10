import 'package:fitness_app/utils/constants/imagaConstants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/radius_constats.dart';
import '../../../utils/extensions/string_extension.dart';
import 'custom_input_icon.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield(
      {super.key,
      required this.hintText,
      this.controller,
      this.prefixSvgIcon,
      this.suffixSvgIcon,
       this.isPassword=false});

  final String hintText;
  final TextEditingController? controller;
  final String? prefixSvgIcon;
  final String? suffixSvgIcon;
  final bool isPassword;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool isSecure = true;
   
  void changeisSecure(){
    isSecure = !isSecure;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? isSecure :false ,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.hintText,
        border: const OutlineInputBorder(
          borderRadius: RadiusConstats.b20,
        ),
        prefixIcon: widget.prefixSvgIcon.svg,
        suffixIcon:widget.suffixSvgIcon==null
        ?
         null : CustomInputIcon(icon:  isSecure ? ImageConstants.svgeye :ImageConstants.svgeyecross, 
         onTap: changeisSecure,),
      ),
    );
  }
}
