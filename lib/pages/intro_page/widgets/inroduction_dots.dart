import 'package:flutter/material.dart';

import '../../../data/models/intro_model.dart';

class InroductionDots extends StatelessWidget {
  const InroductionDots({super.key, required this.selectedPage, });
 
  final  int selectedPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        for (int i = 0; i < IntroModel.myModel.length; i++)
          SizedBox(
            width: 50,
            height: 16,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color:selectedPage==i ?Colors.green : Colors.white,
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20))),
          ),
      ],
    );
  }
}
