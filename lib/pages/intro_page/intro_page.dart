import '../auth/register_page.dart';
import 'widgets/intro_startedbutton.dart';
import '../../utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

import '../../data/models/intro_model.dart';
import 'widgets/inroduction_dots.dart';
import 'widgets/intro_item.dart';
import 'widgets/intro_next_button.dart';

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
            selectedPage == IntroModel.myModel.length - 1
                ? const IntroStartedbutton()
                : Row(
                    children: [
                      IntroNextButton(
                        pageController: _pageController,
                        selectedPage: selectedPage,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2,
                        child: TextButton(
                            onPressed: () {
                              context.goReplace(const RegisterPage());
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
          ],
        ));
  }
}
