import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_info_screen/barcode_info_screen.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_info_screen/barcode_info_screen_model.dart';

BarcodeInfoScreenWidgetModel barcodeInfoScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = BarcodeInfoScreenModel(
    errorHandler: getIt.get<ErrorHandler>(),
  );

  return BarcodeInfoScreenWidgetModel(
    model: model,
  );
}

class BarcodeInfoScreenWidgetModel
    extends WidgetModel<BarcodeInfoScreen, BarcodeInfoScreenModel>
    implements IBarcodeInfoScreenWidgetModel {
  BarcodeInfoScreenWidgetModel({
    required BarcodeInfoScreenModel model,
  }) : super(model);

}

abstract class IBarcodeInfoScreenWidgetModel extends IWidgetModel {
}
