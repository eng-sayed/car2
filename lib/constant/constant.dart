import 'package:flutter/material.dart';

const KTextDecoration = InputDecoration(
  fillColor: Colors.red,
  focusColor: Colors.yellow,
  hoverColor: Colors.green,
 // hintText: 'Enter your password.',
  hintStyle: TextStyle(fontSize: 15.0, color: Colors.black12),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF212121), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF212121), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  // prefixIcon: Icon(
  //   Icons.email,
  //   color: Color(0xFF448AFF),
  // )
);
