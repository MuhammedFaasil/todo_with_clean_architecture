import 'package:clean_architecture_todo/core/themes/extensions/todo_extensions.dart';
import 'package:flutter/material.dart';

final class Apptheme {
  final BuildContext context;
  Apptheme.of(this.context);

  AppColorExtensions get colors {
    return Theme.of(context).extension<AppColorExtensions>()!;
  }
}
