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
      appBar: AppBar(
        title: const Text('Главная'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'СКАНИРОВАТЬ ШТРИХКОД С ПОМОЩЬЮ КАМЕРЫ',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ВВЕСТИ ШТРИХКОД ВРУЧНУЮ',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
