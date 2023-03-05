import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/onboarding/ui/onboarding_screen/onboarding_screen.dart';
import 'package:hackathon_template/feature/onboarding/ui/onboarding_screen/onboarding_screen_model.dart';
import 'package:hackathon_template/navigation/app_router.dart';
import 'package:hackathon_template/util/shared_preferences/shared_preferences_helper.dart';

abstract class IOnboardingScreenWidgetModel extends IWidgetModel {
  /// Контроллер для страниц с информацией
  late PageController pageController;

  /// Содержание страниц с информацией
  late List<String> onboardingPagesContent;
  int get pageCount;

  /// Имя пользователя
  StateNotifier<String> get pageState;

  /// Нажатие на кнопку
  void onPressed();

  /// Действие при отмене онбординга
  void cancelOnboarding();
}

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

class OnboardingScreenWidgetModel
    extends WidgetModel<OnboardingScreen, OnboardingScreenModel>
    implements IOnboardingScreenWidgetModel {
  /// Контроллер для страниц с информацией
  @override
  PageController pageController = PageController();

  /// Содержание страниц с информацией
  @override
  List<String> onboardingPagesContent = [
    'Это приложение для февральского хакатона в Surf',
    'В приложении вы можете отсканировать штрих-код интересующей вас лампочки',
    'Мы предоставим вам всю имеющуюся информацию по необходимой лампочке',
    'Вы можете ввести штрих-код вручную или использовать камеру для сканирования',
  ];

  /// Количество информативных страниц
  int get pageCount => onboardingPagesContent.length;

  OnboardingScreenWidgetModel({
    required OnboardingScreenModel model,
  }) : super(model);

  @override
  void initWidgetModel() {
    pageController.addListener(_pageListener);
    super.initWidgetModel();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onPressed() {
    final currPage = pageController.page!.toInt() + 1;
    final pagesCount = onboardingPagesContent.length;
    if (currPage == pagesCount) {
      context.replaceRoute(
        HomeRoute(),
      );

      /// Указывем флаг того что пользователь уже был в приложении
      SharedPreferencesHelper.setValue('isFirstOpen', false);

      return;
    }
    pageController.nextPage(
      duration: kThemeAnimationDuration,
      curve: Curves.decelerate,
    );
  }

  @override
  void cancelOnboarding() {
    context.replaceRoute(
      HomeRoute(),
    );
  }

  @override
  StateNotifier<String> pageState = StateNotifier<String>(initValue: 'Далее');

  /// Обработчик страниц
  void _pageListener() {
    final currPage = pageController.page!.toInt();
    final pagesCount = onboardingPagesContent.length - 1;
    if (currPage == pagesCount) {
      pageState.accept("Перейти к приложению");

      return;
    } else {
      pageState.accept("Далее");
    }
  }
}
