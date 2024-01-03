import 'package:clean_architecture_todo/core/themes/extensions/todo_extensions.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'light_theme.g.dart';

final _lighttheme = ThemeData(
  brightness: Brightness.light,
  extensions: [
    AppColorExtensions(
        primary: Colors.blue, secondory: Colors.purple, text: Colors.red)
  ],
);
@riverpod
ThemeData lightTheme(LightThemeRef ref) {
  return _lighttheme;
}
