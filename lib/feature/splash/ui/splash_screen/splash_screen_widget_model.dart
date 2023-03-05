import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/splash/ui/splash_screen/splash_screen.dart';
import 'package:hackathon_template/feature/splash/ui/splash_screen/splash_screen_model.dart';
import 'package:hackathon_template/navigation/app_router.dart';
import 'package:hackathon_template/util/shared_preferences/shared_preferences_helper.dart';
import 'package:permission_handler/permission_handler.dart';

SplashScreenWidgetModel splashScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = SplashScreenModel(
    errorHandler: getIt.get<ErrorHandler>(),
  );

  return SplashScreenWidgetModel(
    model: model,
  );
}

class SplashScreenWidgetModel
    extends WidgetModel<SplashScreen, SplashScreenModel>
    implements ISplashScreenWidgetModel {
  SplashScreenWidgetModel({
    required SplashScreenModel model,
  }) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    _requestCameraPermission();

    Timer(
      const Duration(seconds: 1),
      () => _navigateToAfterSplashScreen(),
    );
  }

  void _navigateToAfterSplashScreen() {
    final isFirstOpen = SharedPreferencesHelper.getValue<bool>(
          'isFirstOpen',
        ) ??
        true;

    if (isFirstOpen) {
      context.replaceRoute(OnboardingRoute());
    } else {
      context.replaceRoute(HomeRoute());
    }
  }

  Future<void> _requestCameraPermission() async {
    final isCameraPermissionWasRequested =
        SharedPreferencesHelper.getValue<bool>(
              'isCameraPermissionWasRequested',
            ) ??
            false;
    if (!isCameraPermissionWasRequested) {
      await Permission.camera.request();
      await SharedPreferencesHelper.setValue(
        'isCameraPermissionWasRequested',
        true,
      );
    }
  }
}

abstract class ISplashScreenWidgetModel extends IWidgetModel {}
