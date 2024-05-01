import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac/models/todo_models.dart';

class CubitCubit extends Cubit<List<Todo>> {
  CubitCubit() : super([]);

  void addTodo(String titile) {
    if (titile.isEmpty) {
      addError('Title cannot be empty');
      return;
    }
    final todd = Todo(
      name: titile,
      createdAt: DateTime.now(),
    );

    state.add(todd);
    emit([...state]);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('TodoCubit $error');
  }
}
