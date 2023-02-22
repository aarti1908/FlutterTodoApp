import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/masonary_grid.dart';
import 'package:provider/provider.dart';
import '/widgets/todo_list_item.dart';
import '../providers/todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    // final todo = Provider.of<Todo>(context, listen: false);

    // return Consumer<Todo>(
    //   builder: (ctx, todoData, child) => MasonaryGridView(
    //     itemCount: todoData.todos.length,
    //   ),
    // );

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
