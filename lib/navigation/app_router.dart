import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_enter_screen/barcode_enter_screen_export.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_info_screen/barcode_info_screen_export.dart';
import 'package:hackathon_template/feature/barcode/ui/barcode_scanner_screen/barcode_scanner_screen_export.dart';
import 'package:hackathon_template/feature/home/ui/home_screen/home_screen_export.dart';
import 'package:hackathon_template/feature/onboarding/ui/onboarding_screen/onboarding_screen_export.dart';
import 'package:hackathon_template/feature/splash/splash_screen.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(
      page: OnboardingScreen,
    ),
    AutoRoute(
      page: BarcodeScannerScreen,
    ),
    AutoRoute(
      page: BarcodeEnterScreen,
    ),
    AutoRoute(
      page: BarcodeInfoScreen,
    ),
  ],
)

@singleton
class AppRouter extends _$AppRouter {}
