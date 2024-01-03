import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';

abstract class ObjectBoxDataSource {
  Future<void> addTodo(TodoEntityModel todo);
  Future<void> deleteTodo(int id);
  Future<void> updateTodo(TodoEntityModel todo);
  List<TodoEntityModel>getTodo();
}
