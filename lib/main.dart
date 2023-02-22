import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor: Colors.amber,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.red,
            selectionColor: Colors.red,
            selectionHandleColor: Colors.red,
          ),
          listTileTheme: const ListTileThemeData(
            iconColor: Colors.red,
          ),
          brightness: Brightness.light,
          textTheme: const TextTheme(
            displayLarge: TextStyle(color: Colors.deepPurpleAccent),
            displayMedium: TextStyle(color: Colors.deepPurpleAccent),
            displaySmall: TextStyle(color: Colors.deepPurpleAccent),
          ),
        ),
        home: const App(),
        routes: {
          Tasks.routeName: (ctx) => const Tasks(),
          Appreciations.routeName: (ctx) => const Appreciations()
        },
        builder: EasyLoading.init(),
      ),
    );
  }
}
