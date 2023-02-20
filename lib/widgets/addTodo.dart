import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/todoItem.dart';

import '../providers/todo.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoScreenState createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodo> {
  final _form = GlobalKey<FormState>();

  var _todo = TodoItem(
    id: '',
    title: '',
  );

  Future<void> _addTodo() async {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();
    await Provider.of<Todo>(context, listen: false).addTodo(_todo);
  }

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context, listen: false);

    return Container(
      child: Form(
        key: _form,
        child: ListView(
          children: [
            TextFormField(
              initialValue: '',
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please provide a value.';
                }
                return null;
              },
              onSaved: (value) {
                _todo = TodoItem(
                  id: _todo.id,
                  title: value!,
                );
              },
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: OutlinedButton(
                onPressed: _addTodo,
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
