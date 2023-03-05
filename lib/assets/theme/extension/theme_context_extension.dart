import 'package:flutter/material.dart';
import 'package:hackathon_template/assets/theme/extension/extra_colors.dart';
import 'package:hackathon_template/assets/theme/extension/profile_typography.dart';

extension ThemeContextExtension on BuildContext {
  ExtraColors get colors => Theme.of(this).extension<ExtraColors>()!;

  OnboardingTypography get profile =>
      Theme.of(this).extension<OnboardingTypography>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
