import 'package:flutter/material.dart';

class ExtraColors extends ThemeExtension<ExtraColors> {
  const ExtraColors({
    required this.white,
    required this.black,
    required this.primary,
  });

  final Color white;
  final Color black;
  final Color primary;

  @override
  ThemeExtension<ExtraColors> copyWith({
    Color? white,
    Color? black,
    Color? primary,
  }) {
    return ExtraColors(
      white: white ?? this.white,
      black: black ?? this.black,
      primary: primary ?? this.primary,
    );
  }

  @override
  ThemeExtension<ExtraColors> lerp(
    ThemeExtension<ExtraColors>? other,
    double t,
  ) {
    if (other is! ExtraColors) {
      return this;
    }

    return ExtraColors(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
    );
  }
}
