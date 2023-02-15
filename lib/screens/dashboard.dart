import 'package:flutter/material.dart';
import '/widgets/todo_list.dart';
import '../widgets/addTodo.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 78, 80, 63),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: AddTodo(),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 78, 80, 63),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: const TodoList(),
            ),
          )
        ],
      ),
    );
  }
}
