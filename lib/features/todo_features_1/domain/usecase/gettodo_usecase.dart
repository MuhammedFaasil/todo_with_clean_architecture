import 'dart:developer';

import 'package:clean_architecture_todo/features/todo_features_1/domain/repository/todo_repository.dart';

final class GetTodoUsecase {
  final TodoRepository repository;

   GetTodoUsecase({required this.repository});

  Future<void> call() async {
    try {
       repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
  }
}
