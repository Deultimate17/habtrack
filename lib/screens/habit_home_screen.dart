import 'package:flutter/material.dart';
import 'package:habtrack/models/habit.dart';
import 'package:habtrack/models/habit_data.dart';
import 'package:habtrack/screens/habit_tile.dart';
import 'package:provider/provider.dart';

class HabitHomeScreen extends StatefulWidget {
  final List<Habit> habits;
  const HabitHomeScreen({super.key, required this.habits});

  @override
  State<HabitHomeScreen> createState() => _HabitHomeScreenState();
}

class _HabitHomeScreenState extends State<HabitHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
           itemBuilder: (context, index) {
             return Text('${widget.habits[index].name}');
           },
           separatorBuilder: (context, index) {
             return SizedBox(height: 5.0,);
           },
           itemCount: widget.habits.length
       ),
    );
  }
}
