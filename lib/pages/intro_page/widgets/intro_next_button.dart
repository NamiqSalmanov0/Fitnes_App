import 'package:flutter/material.dart';

class IntroNextButton extends StatelessWidget {
  const IntroNextButton(
      {super.key, required this.pageController, required this.selectedPage});
  final PageController pageController;
  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pageController.jumpToPage(selectedPage + 1);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(120, 68),
        backgroundColor: Colors.green,
      ),
      child: const Text(
        'Next',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
