import '../../utils/constants/image_constants.dart';

class IntroModel {
  final String image;
  final String title;

  IntroModel({required this.image, required this.title});

  static  List<IntroModel> myModel = [
    IntroModel(image: ImageConstants.q4,
     title: 'Welcome to THe Ultimate Exercise Library Plus,the ultimate resource for comprehesnive exercise guidance!'),
    IntroModel(image: ImageConstants.q3,
     title:'To optimize your food intake and ensure adequate protein and calorie consumption to promote muscle growth,consider' ),
    IntroModel(image: ImageConstants.q2,
     title: 'Embert on your Fitness transformation with our Elite training programs and personalized coaching')
  ];
}
