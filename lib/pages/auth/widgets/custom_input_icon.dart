import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomInputIcon extends StatelessWidget {
  const CustomInputIcon({super.key, required this.onTap, required this.icon});

  final void Function() onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
