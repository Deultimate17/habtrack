import 'package:flutter/material.dart';

import 'color.dart';

const kInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.grey,
  hintText: 'Enter your value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintStyle: TextStyle(
      color: Colors.grey,
    fontFamily: 'Montserrat',
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    borderSide: BorderSide.none
  ),
);

const kTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 46, fontFamily: 'Barlow',
    color: Colors.green
);
