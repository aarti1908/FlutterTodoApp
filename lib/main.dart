import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/app.dart';
import 'package:flutter_todo_app/screens/appreciations.dart';
import 'package:flutter_todo_app/screens/tasks.dart';
import './providers/todo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Todo(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // UI
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          fontFamily: 'Georgia',
          //text style
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home: const App(),
        routes: {
          Tasks.routeName: (ctx) => const Tasks(),
          Appreciations.routeName: (ctx) => const Appreciations()
        },
      ),
    );
  }
}
