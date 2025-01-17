import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/style.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  DateTimeRange? selectedRange;
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
                 style: TextStyle(color: Colors.black),
                 decoration: InputDecoration(
                   hintText: 'Name(Type here)',
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
               ),
             ),
           ],
         ),
          Text('Date'),
          IconButton(
              onPressed: () async {
                final DateTime now = DateTime.now();
                final picked = await showDateRangePicker(
                    context: context,
                    firstDate: now,
                    lastDate: DateTime(9999),
                  initialDateRange: DateTimeRange(
                      start: now,
                      end: now.add(Duration(days: 0))),

                );
                if (picked != null) {
                  setState(() {
                    selectedRange = picked;
                  });
                }
              },
              icon: Icon(Icons.calendar_today)
          )

        ],
      ),
    );
  }
}
