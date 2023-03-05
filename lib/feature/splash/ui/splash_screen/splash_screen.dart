import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/splash/ui/splash_screen/splash_screen_widget_model.dart';

class SplashScreen extends ElementaryWidget<ISplashScreenWidgetModel> {
  const SplashScreen({
    Key? key,
    WidgetModelFactory wmFactory = splashScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISplashScreenWidgetModel wm) {
    return Scaffold(
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
