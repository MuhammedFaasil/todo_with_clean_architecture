import 'package:clean_architecture_todo/core/objectbox/objectbox.dart';
import 'package:clean_architecture_todo/core/themes/light_theme.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ObjectBox.create();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ref.watch(lightThemeProvider),
      debugShowCheckedModeBanner: false,
      home: TodoHomePage(),
    );
  }
}
