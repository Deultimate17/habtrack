import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habtrack/models/habit.dart';
import 'package:provider/provider.dart';
import '../constants/style.dart';

class HabitScreen extends StatefulWidget {
  final List<Habit> habits;
  const HabitScreen({super.key, required this.habits,});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  String textTask = '';


  
  void addHabit (String newHabit) {
    final habit = Habit(name: newHabit);
     widget.habits.add(habit);
  }
  // DateTimeRange? selectedRange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => context.go('/suggestion'), // Navigate back to SignIn
                icon: Icon(Icons.chevron_left),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Add new habit'
                  ),
                ),
              ),
            ],
          ),
         SizedBox(height: 15,),
         Row(
           children: [
             Text('Icon'),
             SizedBox(width: 20,),
             Expanded(
               child: TextField(
                 autofocus: true,
                 textAlign: TextAlign.center,
                 onChanged: (newText) {
                   setState(() {
                     textTask = newText;
                   });
                   print(textTask);
                 },
               ),
             ),
           ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Start: '),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                          child: UnBoundedTextField(hint: '')
                      ),
                    ],
                  ),

                  Text('End: '),
                  Row(
                    children: [
                      SizedBox(
                          width: 50,
                          child: UnBoundedTextField(hint: '')
                      ),
                    ],
                  )
                ]

              )
            ],
          ),
         ElevatedButton(
             onPressed: () {
               if (textTask.trim().isNotEmpty) {
                 addHabit(textTask);
                 context.go('/habitScreen');
               }
             },
             child: Text('Done')
         )
        ],
      ),
    );
  }
}

class UnBoundedTextField extends StatelessWidget {
  const UnBoundedTextField({
    super.key, required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black)
        ),
        border:  UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black)
        )
      ),
    );
  }
}
