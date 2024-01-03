import 'package:flutter/material.dart';

class AppColorExtensions extends ThemeExtension<AppColorExtensions> {
  final Color primary;
  final Color text;
  final Color secondory;

  AppColorExtensions(
      {required this.primary, required this.secondory, required this.text});

  @override
  ThemeExtension<AppColorExtensions> copyWith(
      {Color? primary, Color? secondory, Color? text}) {
    return AppColorExtensions(
        primary: primary ?? this.primary,
        secondory: secondory ?? this.secondory,
        text: text ?? this.text);
  }

  @override
  ThemeExtension<AppColorExtensions> lerp(
      covariant ThemeExtension<AppColorExtensions>? other, double t) {
    if (other is! AppColorExtensions) {
      return this;
    }
    return AppColorExtensions(
        primary: Color.lerp(primary, other.primary, t)!,
        secondory: Color.lerp(secondory, other.secondory, t)!,
        text: Color.lerp(text, other.text, t)!);
  }
}
