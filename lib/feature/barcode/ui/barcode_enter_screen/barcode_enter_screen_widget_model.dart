import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_enter_screen/barcode_enter_screen.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_enter_screen/barcode_enter_screen_model.dart';

BarcodeEnterScreenWidgetModel barcodeEnterScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = BarcodeEnterScreenModel(
    errorHandler: getIt.get<ErrorHandler>(),
  );

  return BarcodeEnterScreenWidgetModel(
    model: model,
  );
}

class BarcodeEnterScreenWidgetModel
    extends WidgetModel<BarcodeEnterScreen, BarcodeEnterScreenModel>
    implements IBarcodeEnterScreenWidgetModel {
  BarcodeEnterScreenWidgetModel({
    required BarcodeEnterScreenModel model,
  }) : super(model);

}

abstract class IBarcodeEnterScreenWidgetModel extends IWidgetModel {
}
