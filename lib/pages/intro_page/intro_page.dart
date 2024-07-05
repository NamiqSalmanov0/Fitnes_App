import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/models/intro_model.dart';
import 'widgets/intro_item.dart';
import 'widgets/intro_next_button.dart';
import 'widgets/intro_previosly.dart';
import 'widgets/intro_skip.dart';
import 'widgets/intro_startedbutton.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          actions:   [
            if(selectedPage!=IntroModel.myModel.length-1)
            const IntroSkip()],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: IntroModel.myModel.length,
                controller: _pageController,
                itemBuilder: (_, i) {
                  final IntroModel intro = IntroModel.myModel[i];
                  return IntroItem(
                    intro: intro,
                  );
                },
                onPageChanged: (i) {
                  selectedPage = i;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: IntroModel.myModel.length,
                effect: const WormEffect(
                    dotColor: Colors.white,
                    activeDotColor: Colors.green,
                    dotHeight: 20,
                    dotWidth: 45),
              ),
            ),
            Row(
              children: [
                if (selectedPage > 0)
                  IntroPreviosly(
                    pageController: _pageController,
                    selectedPage: selectedPage,
                  ),
                const Spacer(),
                selectedPage == IntroModel.myModel.length - 1
                    ? const IntroStartedbutton()
                    : IntroNextButton(
                        pageController: _pageController,
                        selectedPage: selectedPage,
                      ),
              ],
            ),
          ],
        ));
  }
}
