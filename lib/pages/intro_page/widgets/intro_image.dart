import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image,width: 500, height: 400,);
  }
}
