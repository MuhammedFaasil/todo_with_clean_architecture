import 'package:clean_architecture_todo/features/todo_features_1/data/models/todo_entity.dart';
import 'package:clean_architecture_todo/objectbox.g.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  static ObjectBox? _instance;

  late final Store store;
  late final Box<TodoEntityModel> todoBox;

  ObjectBox._create(this.store) {
    todoBox = store.box<TodoEntityModel>();
  }

  static ObjectBox get instance {
    return _instance!;
  }

  static Future<void> create() async {
    if (_instance == null) {
      final docDir = await getApplicationDocumentsDirectory();
      final store = await openStore(directory: join(docDir.path, 'todo'));
      _instance = ObjectBox._create(store);
    }
  }
}
