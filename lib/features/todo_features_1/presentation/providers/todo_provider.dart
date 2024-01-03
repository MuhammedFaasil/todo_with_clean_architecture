import 'dart:developer';

import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/repository/todo_repository_impl.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/repository/todo_repository.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/usecase/addtodo_usecase.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/usecase/delettodo_uscase.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

@riverpod
class Todo extends _$Todo {
  late final TextEditingController todoControler;
  late TodoRepository repository;

  @override
  List<TodoEntityModel> build() {
    todoControler = TextEditingController();
    repository = ref.watch(todoRepositoryProvider);

    // ref.onDispose(dispose);
    return repository.getTodo();
  }

  // void dispose() {
  //   todoControler.dispose();
  // }

  Future<String?> addTodo() async {
    try {
      final title = todoControler.text;
      await AddTodoUseCase(repository: repository)(
          title: title, isChecked: false);
      state = repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<String?> deleteTodo(int id) async {
    try {
      await DeletTodoUsecase(repository: repository)(id: id);
      state = repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
