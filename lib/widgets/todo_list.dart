import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/widgets/todo_list_item.dart';
import '../providers/todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    // final todo = Provider.of<Todo>(context, listen: false);

    return FutureBuilder(
      future: Provider.of<Todo>(context).fetchTodos(),
      builder: (ctx, dataSnapshot) {
        return Consumer<Todo>(
          builder: (ctx, todoData, child) => ListView.builder(
            itemCount: todoData.todos.length,
            itemBuilder: (ctx, i) => TodoListItem(todoData.todos[i]),
          ),
        );
      },
    );
  }
}
