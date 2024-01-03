import 'dart:developer';

import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/repository/todo_repository.dart';

final class UpdateTodoUsecase {
  final TodoRepository repository;
  UpdateTodoUsecase({required this.repository});

  Future<void> call(
      {required String title, required bool isChecked, required int id}) async {
    try {
      if (title.trim().isEmpty) {
        log('title is empty');
      }
      final todo = TodoEntity(id: id, tittle: title, isChecked: isChecked);
      repository.updateTodo(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}
