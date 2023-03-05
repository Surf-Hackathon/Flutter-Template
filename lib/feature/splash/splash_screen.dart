import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_template/feature/onboarding/onboarding_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Permission.camera.request().ignore();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const OnboardingScreen())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
