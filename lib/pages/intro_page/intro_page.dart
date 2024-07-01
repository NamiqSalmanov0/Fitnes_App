import 'package:fitness_app/pages/intro_page/widgets/intro_startedbutton.dart';
import 'package:flutter/material.dart';

import '../../data/models/intro_model.dart';
import 'widgets/inroduction_dots.dart';
import 'widgets/intro_item.dart';

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
              child: InroductionDots(
                selectedPage: selectedPage,
              ),
            ),
            selectedPage==IntroModel.myModel.length-1 ?
            const IntroStartedbutton()
           : ElevatedButton(
              onPressed: () {
                _pageController.jumpToPage(selectedPage + 1);
              },
              style: ElevatedButton.styleFrom(
                
               fixedSize: const Size(120, 68),
                backgroundColor: Colors.green,
              ),
              child: const Text('Next',style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
            )
          ],
        ));
  }
}
