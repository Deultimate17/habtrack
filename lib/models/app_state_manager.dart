import 'dart:async';
import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {
  bool _initialized = false;
  bool _signedIn = false;
  bool _register = false;

  bool get initialized => _initialized;
  bool get signedIn => _signedIn;
  bool get registered => _register;

  void initializeApp() {
    Timer(Duration(milliseconds: 2000), () {
      _initialized = true;
      notifyListeners();
    });

  }

  void registeredUser() {
    _register = true;
    notifyListeners();
  }


  void signIn() {
    _signedIn = true;
    _register = false;
    notifyListeners();
  }
}


