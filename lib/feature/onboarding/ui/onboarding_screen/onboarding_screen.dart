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
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
