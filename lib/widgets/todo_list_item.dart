import 'package:flutter/material.dart';
import 'package:flutter_todo_app/providers/todo.dart';
import 'package:provider/provider.dart';
import '/models/todoItem.dart';

class TodoListItem extends StatelessWidget {
  final TodoItem todoItem;
  const TodoListItem(this.todoItem);

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(todoItem.title),
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Delete',
            onPressed: () async {
              await Provider.of<Todo>(context, listen: false)
                  .deleteTodo(todoItem.id);
            },
          ),
        ],
      ),
    );
  }
}
