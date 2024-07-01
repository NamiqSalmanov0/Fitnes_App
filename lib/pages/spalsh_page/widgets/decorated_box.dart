import 'package:flutter/material.dart';

import '../../../utils/constants/image_constants.dart';

class DecorWidget extends StatelessWidget {
  const DecorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 600,
      width: 500,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ImageConstants.q1)),
        ),
      ),
    );
  }
}
