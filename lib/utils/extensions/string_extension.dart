import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension StringExtension on String? {
  Widget? get svg => this != null
      ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
              this!,
              height: 24,
              width: 24,
            ),
        ],
      )
      : null;
}
