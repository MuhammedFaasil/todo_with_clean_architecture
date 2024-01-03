import 'package:clean_architecture_todo/core/themes/app_theme.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/pages/add_update_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddTodoWidget extends ConsumerWidget {
  final TodoEntity? todo;
  AddTodoWidget({super.key, this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      backgroundColor: Apptheme.of(context).colors.secondory,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddUpdatePage(),
            ));
      },
      child: Icon(Icons.add),
    );
  }
}
