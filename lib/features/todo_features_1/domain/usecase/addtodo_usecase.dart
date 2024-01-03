import 'dart:developer';

import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/repository/todo_repository.dart';

final class AddTodoUseCase {
  final TodoRepository repository;
  AddTodoUseCase({required this.repository});

  Future<void> call({required String title, required bool isChecked}) async {
    try {
      if (title.trim().isEmpty) {
        log('title is empty');
      }
      final todo = TodoEntity(id: 0, tittle: title, isChecked: isChecked);
      repository.addTodo(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}
