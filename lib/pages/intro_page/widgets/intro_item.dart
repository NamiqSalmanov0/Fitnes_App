import 'package:flutter/material.dart';

import '../../../data/models/intro_model.dart';
import 'intro_image.dart';

class IntroItem extends StatelessWidget {
  const IntroItem({
    super.key, required this.intro,
  });
  final IntroModel intro;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: IntroImage(
            image: intro.image,
            
          ),
        ),
        const SizedBox(height: 10),
       
        const SizedBox(
          height: 13,
        ),
        Text(
          intro.title,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ],
    );
  }
}
