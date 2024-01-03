import 'package:clean_architecture_todo/features/todo_features_1/data/datasource/object_todo_feauture/object_datasource.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/datasource/object_todo_feauture/object_datasource_impl.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_repository_impl.g.dart';

class TodoRepositoryImpl implements TodoRepository {
  final ObjectBoxDataSource dataSource;

  TodoRepositoryImpl({required this.dataSource});
  @override
  Future<void> addTodo(TodoEntity todo) async {
    final addToTodo =
        TodoEntityModel(title: todo.tittle, isChecked: todo.isChecked);
    await dataSource.addTodo(addToTodo);
  }

  @override
  Future<void> deleteTodo(int id) async {
    await dataSource.deleteTodo(id);
  }

  @override
  List<TodoEntityModel> getTodo() {
    return dataSource.getTodo();
  }

  @override
  Future<void> updateTodo(TodoEntity todo) async {
    await dataSource.updateTodo(
        TodoEntityModel(title: todo.tittle, isChecked: todo.isChecked));
  }
}

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  return TodoRepositoryImpl(dataSource: ref.watch(todoDataSourceProvider));
}
