import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/models/intro_model.dart';
import 'widgets/inroduction_dots.dart';
import 'widgets/intro_item.dart';
import 'widgets/intro_next_button.dart';
import 'widgets/intro_previosly.dart';
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
          actions: [TextButton(onPressed: () {},
           child: const Text('Skip',style: TextStyle(
            color: Colors.white,
            fontSize: 15
           ),))],
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
               child:SmoothPageIndicator(controller: _pageController, count: IntroModel.myModel.length,
               effect: const WormEffect( dotColor: Colors.white,activeDotColor: Colors.green,dotHeight: 20,
               dotWidth: 45) ,
               ) 
               
               
               //InroductionDots(
              //   selectedPage: selectedPage,
              // ),
            ),
            if(selectedPage==0)...[
              Visibility(
                visible: false,
                child: IntroPreviosly(
                  pageController: _pageController, selectedPage: selectedPage)),
                IntroNextButton(pageController: _pageController, selectedPage: selectedPage)
            ],
            if(selectedPage==1)...[
               Row(
                 children: [
                   Visibility(
                    visible: true,
                    child: IntroPreviosly(
                      pageController: _pageController, selectedPage: selectedPage)),
                      const Spacer(),
                      IntroNextButton(pageController: _pageController, selectedPage: selectedPage)
                 ],
               ),
                

            ],
            if(selectedPage==2)...[
               Row(
                 children: [
                   const Visibility(
                    visible: true,
                    child:  IntroStartedbutton()),
                    const Spacer(),
                     IntroPreviosly(pageController: _pageController, selectedPage: selectedPage)
                 ],
               ),
               

            ],
          ],
        ));
  }
}
