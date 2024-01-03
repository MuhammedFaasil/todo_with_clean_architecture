import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/providers/todo_provider.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/widgets/delete_todo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListWidget extends ConsumerWidget {
  const TodoListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void deletTodo(TodoEntityModel todo) {
      showDialog(
        context: context,
        builder: (context) => DeleteWidget(todo: todo),
      );
    }

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              leading: Checkbox(
                value: ref.watch(todoProvider)[index].isChecked,
                onChanged: (value) {},
              ),
              title: Text(ref.watch(todoProvider)[index].title!),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        deletTodo(ref.watch(todoProvider)[index]);
                      },
                      icon: Icon(Icons.delete))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
          itemCount: ref.watch(todoProvider).length),
    );
  }
}
