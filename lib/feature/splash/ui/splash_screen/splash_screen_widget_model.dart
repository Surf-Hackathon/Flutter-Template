import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/splash/ui/splash_screen/splash_screen.dart';
import 'package:hackathon_template/feature/splash/ui/splash_screen/splash_screen_model.dart';

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

}

abstract class ISplashScreenWidgetModel extends IWidgetModel {
}
