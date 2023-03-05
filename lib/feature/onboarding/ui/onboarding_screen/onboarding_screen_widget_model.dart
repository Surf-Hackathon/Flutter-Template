import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/onboarding/ui/onboarding_screen/onboarding_screen.dart';
import 'package:hackathon_template/feature/onboarding/ui/onboarding_screen/onboarding_screen_model.dart';

OnboardingScreenWidgetModel onboardingScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = OnboardingScreenModel(
    errorHandler: getIt.get<ErrorHandler>(),
  );

  return OnboardingScreenWidgetModel(
    model: model,
  );
}

class OnboardingScreenWidgetModel extends WidgetModel<OnboardingScreen, OnboardingScreenModel>
    implements IOnboardingScreenWidgetModel {
  OnboardingScreenWidgetModel({
    required OnboardingScreenModel model,
  }) : super(model);
}

abstract class IOnboardingScreenWidgetModel extends IWidgetModel {}
