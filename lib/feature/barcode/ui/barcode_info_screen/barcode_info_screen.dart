import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_info_screen/barcode_info_screen_widget_model.dart';

class BarcodeInfoScreen extends ElementaryWidget<IBarcodeInfoScreenWidgetModel> {
  const BarcodeInfoScreen({
    Key? key,
    WidgetModelFactory wmFactory = barcodeInfoScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IBarcodeInfoScreenWidgetModel wm) {
    return Scaffold(
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
