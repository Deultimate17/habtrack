import 'package:flutter/material.dart';
import 'package:habtrack/constants/style.dart';

class SuggestionScreen extends StatelessWidget {
  const SuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  "Let's begin with a fresh start...",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Barlow'
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0,),
              Options(title: 'Follow my suggestions',),
              SizedBox(height: 10.0,),
              Options(title: 'Create your own')
            ],
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
        child: Text(
            title,
          textAlign: TextAlign.center,
          style: kOptionStyle,
        ),
      ),
    );
  }
}
