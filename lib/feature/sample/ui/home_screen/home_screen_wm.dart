// import 'package:elementary/elementary.dart';
// import 'package:flutter/material.dart';
// import 'package:prepared_flutter_project/di/di_container.dart';
// import 'package:prepared_flutter_project/feature/sample/interactors/sample_interactor.dart';
// import 'package:prepared_flutter_project/feature/sample/ui/home_screen/barcode_info_screen.dart';
// import 'package:prepared_flutter_project/util/error_handling/error_handler.dart';
//
// import 'barcode_info_screen_model.dart';
//
// /// Абстракция Widget Model для экрана
// abstract class IHomeScreenWidgetModel extends IWidgetModel {}
//
// HomeScreenWidgetModel homeScreenWidgetModelFactory(BuildContext context) {
//   final model = HomeScreenModel(
//     sampleInteractor: getIt.get<SampleInteractor>(),
//     errorHandler: getIt.get<DefaultErrorHandler>(),
//   );
//
//   return HomeScreenWidgetModel(
//     model: model,
//   );
// }
//
// /// Имплементация и реализация Виджет модели [IHomeScreenWidgetModel]
// class HomeScreenWidgetModel extends WidgetModel<HomeScreen, HomeScreenModel>
//     implements IHomeScreenWidgetModel {
//   HomeScreenWidgetModel({
//     required HomeScreenModel model,
//   }) : super(model);
// }
