import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/appreciations.dart';
import 'package:flutter_todo_app/screens/tasks.dart';
import 'package:flutter_todo_app/screens/timer.dart';
import 'dashboard.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  _currentPage(index) {
    switch (index) {
      case 0:
        return const Dashboard();
        break;
      case 1:
        return const Tasks();
        break;
      case 2:
        return const Appreciations();
        break;
      case 3:
        return const Time();
        break;
      default:
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: _currentPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Appreciations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Timer',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
