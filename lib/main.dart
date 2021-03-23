import 'package:flutter/material.dart';
import 'package:hisny/screens/log_in.dart';
import 'package:hisny/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        Register.id: (context) => Register()
      },
    );
  }
}
