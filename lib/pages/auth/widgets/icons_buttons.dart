import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/register_login_icon._model..dart';

class IconsButtons extends StatelessWidget {
  const IconsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < SocialIconModel.svgmodel.length; i++)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: SvgPicture.asset(
                height: 45,
                width: 45,
                SocialIconModel.svgmodel[i].iconSvg,
              ),
            ),
          ),
      ],
    );
  }
}
