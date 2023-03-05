import 'package:flutter/material.dart';

class ScannerMenuScreen extends StatefulWidget {
  const ScannerMenuScreen({Key? key}) : super(key: key);

  @override
  State<ScannerMenuScreen> createState() => _ScannerMenuScreenState();
}

class _ScannerMenuScreenState extends State<ScannerMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
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
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'СКАНИРОВАТЬ ШТРИХКОД С ПОМОЩЬЮ КАМЕРЫ',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
