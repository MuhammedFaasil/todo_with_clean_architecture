import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';

abstract class TodoRepository{
  Future<void> addTodo(TodoEntity todo);
  Future<void> deleteTodo(int id);
  Future<void> updateTodo(TodoEntity todo);
   List<TodoEntityModel>getTodo();
}