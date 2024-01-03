import 'package:clean_architecture_todo/core/constants/todo_feature_1/text/main_constants.dart';
import 'package:clean_architecture_todo/features/todo_features_1/domain/entity/todo_entity.dart';
import 'package:clean_architecture_todo/features/todo_features_1/presentation/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TexfieldWidget extends ConsumerWidget {
  final TextEditingController todoControler = TextEditingController();
  final TodoEntity? todo;
  TexfieldWidget({super.key, this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textdata = ref.watch(homeConstantsProvider);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 50,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: ref.read(todoProvider.notifier).todoControler,
          autofocus: true,
          decoration: InputDecoration(
            hintText: todo != null ? textdata.hintUpdate : textdata.hintSave,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
