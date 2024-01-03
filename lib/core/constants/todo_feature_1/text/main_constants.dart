import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main_constants.g.dart';

class HomeConstants {
  final appName = 'Todo App';
  final addTodos = 'Add Todo';
  final updateTodo = 'Update Todo';
  final saveTodo = 'Save';
  final updateFieldTodo = 'Update';
  final emptyList = 'Todo List Is Empty';
  final hintSave = 'Add to Todo List';
  final hintUpdate = 'Add to Todo List';
  final deletMessage = 'Are You Sure do you want to Delete this';
  final cancelMessage = 'cancel';
  final delete = 'delete';
}

@riverpod
HomeConstants homeConstants(HomeConstantsRef ref) {
  return HomeConstants();
}
