import 'package:flutter/material.dart';
import 'package:hackathon_template/scanner_menu_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  final onboardingPages = [
    'Это приложения для февральского хакатона в Surf',
    'Тут вы можеете сканировать баркод интересующей вас лампочки',
    'Мы предоставим вам всю имеющуюся информацию о ней',
    '',
    'Вы можете ввести баркод вручную или использовать камеру для сканирования',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: onboardingPages.length,
            itemBuilder: (_, i) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    onboardingPages[i],
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: ElevatedButton(
              onPressed: () {
                final currPage = pageController.page!.toInt() + 1;
                final pagesCount = onboardingPages.length;
                if (currPage == pagesCount) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ScannerMenuScreen()),
                  );
                  return;
                }
                pageController.nextPage(
                  duration: kThemeAnimationDuration,
                  curve: Curves.decelerate,
                );
              },
              child: const Text('Далее'),
            ),
          ),
        ],
      ),
    );
  }
}
