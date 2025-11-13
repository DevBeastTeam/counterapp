import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int hours = 12;
  int minutes = 33;
  int seconds = 25;
  bool isRunning = true;

  void togglePause() {
    isRunning = !isRunning;
    notifyListeners();
  }

  void reset() {
    hours = 0;
    minutes = 0;
    seconds = 0;
    notifyListeners();
  }

  void delete() {
    hours = 0;
    minutes = 0;
    seconds = 0;
    notifyListeners();
  }

  void updateCounter() {
    if (!isRunning) return;

    seconds++;
    if (seconds >= 60) {
      seconds = 0;
      minutes++;
    }
    if (minutes >= 60) {
      minutes = 0;
      hours++;
    }
    notifyListeners();
  }
}
