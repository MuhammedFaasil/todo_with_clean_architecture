import 'dart:developer';

import 'package:clean_architecture_todo/features/todo_features_1/domain/repository/todo_repository.dart';

final class DeletTodoUsecase {
  final TodoRepository repository;
  DeletTodoUsecase({required this.repository});

  Future<void> call({required int id}) async {
    try {
      repository.deleteTodo(id);
    } catch (e) {
      log(e.toString());
    }
  }
}
