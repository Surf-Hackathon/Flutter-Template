import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/onboarding/ui/onboarding_screen/onboarding_screen_widget_model.dart';

class OnboardingScreen extends ElementaryWidget<IOnboardingScreenWidgetModel> {
  const OnboardingScreen({
    Key? key,
    WidgetModelFactory wmFactory = onboardingScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOnboardingScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 32,
            ),
            tooltip: 'Закрыть онбординг',
            onPressed: wm.cancelOnboarding,
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: wm.pageController,
            itemCount: wm.pageCount,
            itemBuilder: (_, i) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: SizedBox(
                      height: 300,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            textAlign: TextAlign.center,
                            wm.onboardingPagesContent[i],
                            style: const TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    ),
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
              onPressed: wm.onPressed,
              child: StateNotifierBuilder<String>(
                listenableState: wm.pageState,
                builder: (
                  BuildContext context,
                  String? userName,
                ) {
                  return Text(userName ?? 'Далее');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
