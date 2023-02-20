import 'package:flutter/material.dart';
import 'dart:async';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  static const routeName = '/timer';

  final int _hours = 00;
  final int _minutes = 00;
  int _seconds = 00;

  void _initTimer() {
    // Timer mytimer = Timer.periodic(Duration(seconds: 5), (timer) {
    //   //code to run on every 5 seconds
    // });

    setState(() {
      _startTime();
    });
  }

  Future<int> _startTime() async {
    await Future.delayed(const Duration(seconds: 1));
    _seconds = _seconds + 1;
    return _seconds + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 194, 231, 248),
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$_hours : $_minutes : $_seconds',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: _initTimer,
                child: const Text('Start'),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: const Text('Stop'),
              )
            ],
          )
        ],
      ),
    );
  }
}
