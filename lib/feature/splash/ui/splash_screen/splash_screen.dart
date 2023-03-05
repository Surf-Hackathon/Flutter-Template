import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_template/feature/splash/ui/splash_screen/splash_screen_widget_model.dart';

class SplashScreen extends ElementaryWidget<ISplashScreenWidgetModel> {
  const SplashScreen({
    Key? key,
    WidgetModelFactory wmFactory = splashScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISplashScreenWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/surf_edu.svg',
          width: 91,
          height: 105,
        ),
      ),
    );
  }
}
