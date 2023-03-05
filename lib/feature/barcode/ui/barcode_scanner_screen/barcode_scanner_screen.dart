import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_scanner_screen/barcode_scanner_screen_widget_model.dart';

class BarcodeScannerScreen extends ElementaryWidget<IBarcodeScannerScreenWidgetModel> {
  const BarcodeScannerScreen({
    Key? key,
    WidgetModelFactory wmFactory = barcodeScannerScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IBarcodeScannerScreenWidgetModel wm) {
    return Scaffold(
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
