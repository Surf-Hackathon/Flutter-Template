import 'package:flutter/material.dart';
import 'package:hackathon_template/assets/theme/app_color.dart';
import 'package:hackathon_template/assets/theme/app_typography.dart';
import 'package:hackathon_template/assets/theme/extension/extra_colors.dart';
import 'package:hackathon_template/assets/theme/extension/profile_typography.dart';

class AppTheme {
  AppTheme._(this.themeData);

  final ThemeData themeData;

  factory AppTheme.light() {
    return AppTheme._(
      ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(),
        scaffoldBackgroundColor: AppColor.white,
        // TODO replace
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.primary,
          onPrimary: AppColor.white,
          secondary: AppColor.primary,
          onSecondary: AppColor.white,
          error: AppColor.primary,
          onError: AppColor.white,
          background: AppColor.white,
          onBackground: AppColor.primary,
          surface: AppColor.white,
          onSurface: AppColor.primary,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTypography.medium16.copyWith(
            color: AppColor.black,
          ),
          backgroundColor: AppColor.white,
          iconTheme: const IconThemeData(
            color: AppColor.black,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            foregroundColor: AppColor.white,
            fixedSize: const Size.fromHeight(40),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            textStyle: AppTypography.semiBold14.copyWith(
              color: AppColor.white,
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          filled: true,
          isDense: true,
          fillColor: AppColor.white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 5,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColor.primary,
        ),
        extensions: [
          const ExtraColors(
            white: AppColor.white,
            black: AppColor.black,
            primary: AppColor.primary,
          ),
          OnboardingTypography(
            someText: AppTypography.normal14.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  factory AppTheme.dark() {
    return AppTheme._(
      ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(),
        scaffoldBackgroundColor: AppColor.white,
      ),
    );
  }
}
