import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_scanner_screen/barcode_scanner_screen.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_scanner_screen/barcode_scanner_screen_model.dart';

BarcodeScannerScreenWidgetModel barcodeScannerScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = BarcodeScannerScreenModel(
    errorHandler: getIt.get<ErrorHandler>(),
  );

  return BarcodeScannerScreenWidgetModel(
    model: model,
  );
}

class BarcodeScannerScreenWidgetModel
    extends WidgetModel<BarcodeScannerScreen, BarcodeScannerScreenModel>
    implements IBarcodeScannerScreenWidgetModel {
  BarcodeScannerScreenWidgetModel({
    required BarcodeScannerScreenModel model,
  }) : super(model);

}

abstract class IBarcodeScannerScreenWidgetModel extends IWidgetModel {
}
