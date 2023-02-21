import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import '/models/todoItem.dart';

class Todo with ChangeNotifier {
  List<TodoItem> _todos = [];

  List<TodoItem> get todos {
    return [..._todos];
  }

  Future<void> addTodo(TodoItem _todo) async {
    EasyLoading.showProgress(0.3, status: 'adding...');

    final url =
        Uri.https('todo-2ad79-default-rtdb.firebaseio.com', '/todos.json');
    try {
      final response = await http
          .post(
            url,
            body: json.encode({
              'title': _todo.title,
              'startDate': '12/12/1997',
              'endDate': '12/12/1223',
            }),
          )
          .then((value) => EasyLoading.showSuccess('Great Success!'));
    } catch (error) {
      print(error);
    }
  }

  Future<void> fetchTodos() async {
    final url =
        Uri.https('todo-2ad79-default-rtdb.firebaseio.com', '/todos.json');
    final response = await http.get(url);
    final List<TodoItem> loadedTodos = [];
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    if (extractedData == null) {
      return;
    }
    extractedData.forEach((orderId, orderData) {
      loadedTodos.add(
        TodoItem(id: orderId, title: orderData['title']),
      );
    });
    _todos = loadedTodos.reversed.toList();
    notifyListeners();
  }
}
