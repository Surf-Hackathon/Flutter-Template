import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_enter_screen/barcode_enter_screen_widget_model.dart';

class BarcodeEnterScreen extends ElementaryWidget<IBarcodeEnterScreenWidgetModel> {
  const BarcodeEnterScreen({
    Key? key,
    WidgetModelFactory wmFactory = barcodeEnterScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IBarcodeEnterScreenWidgetModel wm) {
    return Scaffold(
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
