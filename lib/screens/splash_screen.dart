import 'package:flutter/material.dart';
import 'package:habtrack/models/app_state_manager.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<AppStateManager>(context,listen: false).initializeApp();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.teal
        ),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                'assets/small_circular_lines.png',
                alignment: Alignment.bottomLeft,
                width: 300,
                fit: BoxFit.cover,
              ),
              bottom: 0.0,
            ),
            Center(
              child: Text(
                  'FocusHub',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.bold,
                  fontSize: 56
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

