import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onPress;
  const RoundedButton({super.key, required this.color, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
            onPressed: onPress,
          minWidth: 300,
          height: 42.0,
          child: Text(
              title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 18
            ),
          ),
        ),
      ),
    );
  }
}
