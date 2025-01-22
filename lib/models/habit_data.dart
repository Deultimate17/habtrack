
import 'package:flutter/material.dart';

import 'habit.dart';

class HabitData extends ChangeNotifier {
  List<Habit> habits = [
    Habit(name: 'Name(Type here)')
  ];

  int get habitCount {
    return habits.length;
  }
  void addHabit(String newHabitTile) {
    final habit  = Habit(name: newHabitTile);
    habits.add(habit);
    notifyListeners();
  }
}