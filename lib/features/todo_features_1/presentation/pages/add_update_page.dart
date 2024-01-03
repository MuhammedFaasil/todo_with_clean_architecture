import 'package:clean_architecture_todo/core/constants/todo_feature_1/text/main_constants.dart';
import 'package:clean_architecture_todo/core/themes/app_theme.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/providers/todo_provider.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/widgets/textfieled_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddUpdatePage extends ConsumerWidget {
  final TodoEntity? todo;
  const AddUpdatePage({super.key, this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textdata = ref.watch(homeConstantsProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Apptheme.of(context).colors.primary,
        centerTitle: true,
        title: Text(todo != null ? textdata.updateTodo : textdata.addTodos),
      ),
      body: Center(child: TexfieldWidget()),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(todoProvider.notifier).addTodo();
          Navigator.pop(context);
          ref.read(todoProvider.notifier).todoControler.clear();
        },
        label:
            Text(todo != null ? textdata.updateFieldTodo : textdata.saveTodo),
        backgroundColor: Apptheme.of(context).colors.secondory,
      ),
    );
  }
}
