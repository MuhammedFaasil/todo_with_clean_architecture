import 'package:clean_architecture_todo/core/objectbox/objectbox.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/datasource/object_todo_feauture/object_datasource.dart';
import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'object_datasource_impl.g.dart';
class ObjectBoxDataSourceImpl implements ObjectBoxDataSource {
  final box = ObjectBox.instance.todoBox;
  @override
  Future<void> addTodo(TodoEntityModel todo) async {
    box.put(todo);
  }

  @override
  Future<void> deleteTodo(int id) async {
    box.remove(id);
  }

  @override
 List<TodoEntityModel> getTodo() {
   return box.getAll();
  }

  @override
  Future<void> updateTodo(TodoEntityModel todo) async {
    box.put(todo);
  }
}
@riverpod
ObjectBoxDataSource todoDataSource(TodoDataSourceRef ref) {
  return ObjectBoxDataSourceImpl();
}
