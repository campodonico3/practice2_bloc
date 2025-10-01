
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice2_bloc/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    state.add(todo);
    //debugPrint(state as String?);
    emit(state);
  }
}
