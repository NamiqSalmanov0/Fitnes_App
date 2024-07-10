import 'package:fitness_app/utils/constants/imagaConstants/image_constants.dart';

class SocialIconModel {
  final String iconSvg;

  SocialIconModel({required this.iconSvg});

  static List<SocialIconModel> svgmodel = [
    SocialIconModel(iconSvg: ImageConstants.googlesvg),
    SocialIconModel(iconSvg: ImageConstants.facesvg),
    SocialIconModel(iconSvg: ImageConstants.applesvg),
  ];
}
