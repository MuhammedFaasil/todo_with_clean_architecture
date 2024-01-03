import 'package:clean_architecture_todo/core/constants/todo_feature_1/text/main_constants.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteWidget extends ConsumerWidget {
  final TodoEntityModel todo;
  const DeleteWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(ref.watch(homeConstantsProvider).deletMessage),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(ref.watch(homeConstantsProvider).cancelMessage)),
        TextButton(
            onPressed: () {
              ref.read(todoProvider.notifier).deleteTodo(todo.id);
              Navigator.pop(context);
            },
            child: Text(ref.watch(homeConstantsProvider).delete))
      ],
    );
  }
}
