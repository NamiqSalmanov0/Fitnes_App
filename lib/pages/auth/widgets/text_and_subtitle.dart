import 'package:flutter/material.dart';

import '../../../utils/extensions/sized_extension.dart';

class TextAndSubtitle extends StatelessWidget {
  const TextAndSubtitle({super.key, required this.text, required this.subtitle});
  final String text;
  final  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.blue[400],
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        20.h,
         Text(
          textAlign: TextAlign.center,
          subtitle,
          style: const TextStyle(

              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
