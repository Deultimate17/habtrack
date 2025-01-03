import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/style.dart';
import '../models/app_state_manager.dart';
import 'package:go_router/go_router.dart';
import '../constants/rounded_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 12.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => context.go('/signin'), // Navigate back to SignIn
                  icon: Icon(Icons.chevron_left),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Register'
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50.0,),
            Text(
                'FocusHub',
              style: kTextStyle,
            ),
            SizedBox(height: 50.0,),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: kInputDecoration.copyWith(hintText: 'Name', fillColor: Colors.grey.shade300),
            ),
            SizedBox(height: 16.0,),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: kInputDecoration.copyWith(hintText: 'Email address', fillColor: Colors.grey.shade300),
            ),
            SizedBox(height: 16.0,),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: kInputDecoration.copyWith(hintText: 'Password', fillColor: Colors.grey.shade300),
            ),
            SizedBox(height: 16.0,),
            RoundedButton(
              color: Colors.green,
              title: 'Register',
              onPress: () {
                print("Registering user and navigating back to SignIn");
                Provider.of<AppStateManager>(context, listen: false).registeredUser();
                context.go('/signin');
              },
            )
          ],
        ),
      ),
    );
  }
}
