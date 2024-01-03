import 'package:clean_architecture_todo/core/constants/todo_feature_1/text/main_constants.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/widgets/add_todo_widget.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/widgets/todo_list_widget.dart';
import 'package:flutter/material.dart';

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(HomeConstants().appName),
        actions: [
          IconButton(onPressed: () {}, icon:const Icon(Icons.arrow_forward))
        ],
      ),
      body:const TodoListWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AddTodoWidget(),
    );
  }
}
