import 'package:flutter/material.dart';
import 'package:habtrack/constants/rounded_button.dart';
import 'package:go_router/go_router.dart';
import 'package:habtrack/models/app_state_manager.dart';
import 'package:provider/provider.dart';
import '../constants/style.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'FocusHub',
              style: kTextStyle,
            ),
            SizedBox(height: 50.0),
            Text(
              'Sign in',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 20.0),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: kInputDecoration.copyWith(hintText: 'Email address', fillColor: Colors.grey.shade300),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: kInputDecoration.copyWith(hintText: 'Password', fillColor: Colors.grey.shade300),
            ),
            RoundedButton(
              color: Colors.green,
              title: 'Sign In',
              onPress: () {
                Provider.of<AppStateManager>(context, listen: false).signIn();
                context.go('/suggestion');
              },
            ),
            Text("Don't have an account?"),
            RoundedButton(
              color: Colors.grey,
              title: 'Register',
              onPress: () {
                print("Navigating to Register");
                context.go('/register');
              },
            )
          ],
        ),
      ),
    );
  }
}
