import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/home/ui/home_screen/home_screen_widget_model.dart';

class HomeScreen extends ElementaryWidget<IHomeScreenWidgetModel> {
  const HomeScreen({
    Key? key,
    WidgetModelFactory wmFactory = homeScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomeScreenWidgetModel wm) {
    return Scaffold(
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
