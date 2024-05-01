import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac/add_todo_list.dart';
import 'package:mac/cubit/cubit_cubit.dart';
import 'package:mac/todolist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitCubit(),
      child: MaterialApp(
          title: 'Bloc Provider',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (_) => const TodoList(),
            '/add-todo': (_) => const AddTodoList()
          }),
    );
  }
}
