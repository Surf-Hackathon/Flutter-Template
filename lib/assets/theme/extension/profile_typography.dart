import 'package:flutter/material.dart';

class OnboardingTypography extends ThemeExtension<OnboardingTypography> {
  const OnboardingTypography({
    required this.someText,
  });

  /// Пример
  final TextStyle someText;

  @override
  ThemeExtension<OnboardingTypography> copyWith({
    TextStyle? someText,
  }) {
    return OnboardingTypography(
      someText: someText ?? this.someText,
    );
  }

  @override
  ThemeExtension<OnboardingTypography> lerp(
    ThemeExtension<OnboardingTypography>? other,
    double t,
  ) {
    if (other is! OnboardingTypography) {
      return this;
    }

    return OnboardingTypography(
      someText: TextStyle.lerp(someText, other.someText, t)!,
    );
  }
}
