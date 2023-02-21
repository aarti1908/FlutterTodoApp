import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/timer.dart';

class Time extends StatelessWidget {
  const Time({super.key});
  static const routeName = '/timer';

  @override
  Widget build(BuildContext context) {
    return const AppTimer();
  }
}
