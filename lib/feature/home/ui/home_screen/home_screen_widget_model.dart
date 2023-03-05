import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/home/ui/component/permission_denied_alert.dart';
import 'package:hackathon_template/feature/home/ui/home_screen/home_screen.dart';
import 'package:hackathon_template/feature/home/ui/home_screen/home_screen_model.dart';
import 'package:hackathon_template/navigation/app_router.dart';
import 'package:permission_handler/permission_handler.dart';

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

class HomeScreenWidgetModel extends WidgetModel<HomeScreen, HomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel({
    required HomeScreenModel model,
  }) : super(model);

  @override
  Future<void> openScannerWithPermissionCheck() async {
    var status = await Permission.camera.status;

    if (status.isDenied) {
      _showDeniedPermissionDialog();
    }

    if (status.isGranted) {
      _openBarcodeScannerScreen();
    }
  }

  @override
  void openBarcodeEnterScreen() {
    context.pushRoute(BarcodeEnterRoute());
  }

  void _openBarcodeScannerScreen() {
    context.pushRoute(BarcodeScannerRoute());
  }

  void _showDeniedPermissionDialog() {
    showDialog(
      context: context,
      builder: (_) {
        return PermissionDeniedAlert(
          openSettings: () {
            openAppSettings();
            context.popRoute();
          },
        );
      },
    );
  }
}

abstract class IHomeScreenWidgetModel extends IWidgetModel {
  Future<void> openScannerWithPermissionCheck();

  void openBarcodeEnterScreen();
}
