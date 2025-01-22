import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  const HabitTile({super.key, required this.habitTitle});
  final String habitTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(habitTitle),
      trailing: Checkbox(
          value: null,
          onChanged: null
      ),
    );
  }
}
