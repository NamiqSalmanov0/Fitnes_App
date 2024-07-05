import 'package:fitness_app/utils/constants/imagaConstants/image_constants.dart';

class RegisterLoginIconModel {
  final String continuesvg;

  RegisterLoginIconModel({required this.continuesvg});

  static List<RegisterLoginIconModel> svgmodel = [
    RegisterLoginIconModel(continuesvg: ImageConstants.googlesvg),
    RegisterLoginIconModel(continuesvg: ImageConstants.facesvg),
    RegisterLoginIconModel(continuesvg: ImageConstants.applesvg),
  ];
}
