import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/models/todoItem.dart';

class TodoListItem extends StatelessWidget {
  final TodoItem todo;
  const TodoListItem(this.todo);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(todo.title),
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Delete',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
