import 'package:flutter/material.dart';
import 'dart:async';

class AppTimer extends StatefulWidget {
  const AppTimer({super.key});

  @override
  State<AppTimer> createState() => _AppTimer();
}

class _AppTimer extends State<AppTimer> {
  int _hours = 0;
  int _minutes = 0;
  int _seconds = 0;

  Timer? appTimer;

  _initTimer() {
    appTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds = _seconds + 1;
        _minutes = _seconds == 60 ? _minutes + 1 : _minutes;
        _hours = _minutes == 60 ? _hours + 1 : _hours;

        _seconds = _seconds == 60 ? 0 : _seconds;
        _minutes = _minutes == 60 ? 0 : _minutes;
      });
    });
  }

  _stopTimer() {
    appTimer?.cancel();
  }

  _resetTimer() {
    appTimer?.cancel();
    setState(() {
      _seconds = 0;
      _minutes = 0;
      _hours = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
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
                onPressed: _stopTimer,
                child: const Text('Stop'),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: _resetTimer,
                child: const Text('Reset'),
              )
            ],
          )
        ],
      ),
    );
  }
}
