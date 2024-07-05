import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/register_login_icon._model..dart';
import '../../../utils/constants/imagaConstants/image_constants.dart';

class IconsButtons extends StatelessWidget {
  const IconsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> svgPaths = [
      ImageConstants.googlesvg,
      ImageConstants.facesvg,
      ImageConstants.applesvg
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < RegisterLoginIconModel.svgmodel.length; i++)
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: SvgPicture.asset(
                svgPaths[i],
                height: 40,
                width: 40,
              ))
      ],
    );
  }
}
