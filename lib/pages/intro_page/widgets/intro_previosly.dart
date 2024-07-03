import 'package:flutter/material.dart';

class IntroPreviosly extends StatelessWidget {
  const IntroPreviosly(
      {super.key, required this.pageController, required this.selectedPage});
  final PageController pageController;
  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pageController.jumpToPage(selectedPage -1);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(120, 68),
        backgroundColor: Colors.green,
      ),
      child: const Text(
        'Previosly',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
