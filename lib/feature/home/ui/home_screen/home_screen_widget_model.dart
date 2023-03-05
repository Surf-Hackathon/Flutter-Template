import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/home/ui/home_screen/home_screen.dart';
import 'package:hackathon_template/feature/home/ui/home_screen/home_screen_model.dart';

HomeScreenWidgetModel homeScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = HomeScreenModel(
    errorHandler: getIt.get<ErrorHandler>(),
  );

  return HomeScreenWidgetModel(
    model: model,
  );
}

class HomeScreenWidgetModel
    extends WidgetModel<HomeScreen, HomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel({
    required HomeScreenModel model,
  }) : super(model);

}

abstract class IHomeScreenWidgetModel extends IWidgetModel {
}
