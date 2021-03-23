import 'package:flutter/material.dart';
import 'package:hisny/Widgets/Rounded_Button.dart';
import 'package:hisny/constant/constant.dart';
import 'package:hisny/screens/register.dart';

class Login extends StatefulWidget {
  static const id = 'Login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                  child: Image.asset(
                'images/car1.png',
                height: 200,
              )),
              // SizedBox(
              //   height: 3.0,
              // ),
              Theme(
                child: TextField(
                  cursorColor: Colors.grey[700],
                  onChanged: (value) {
                    email = value;
                  },
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black, fontSize: 15.0),
                  decoration: KTextDecoration.copyWith(
                    //  hintText: 'Enter your Email',
                    prefixIcon: Icon(
                      Icons.person,
                      // color: Colors.red,
                    ),
                  ),
                ),
                data:
                    Theme.of(context).copyWith(primaryColor: Colors.grey[800]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Theme(
                child: TextField(
                  cursorColor: Colors.grey[700],
                  onChanged: (value) {
                    password = value;
                  },
                  textAlign: TextAlign.center,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: KTextDecoration.copyWith(
                      // hintText: 'Enter password',
                      prefixIcon: Icon(
                    Icons.enhanced_encryption,
                  )),
                  style: TextStyle(color: Colors.black),
                ),
                data:
                    Theme.of(context).copyWith(primaryColor: Colors.grey[800]),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RoundedButton(
                  btnName: 'Sign in',
                  // color: Color(0xFFFFFFFF),
                  color: Color(0xFF757575),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Register.id);
                  },
                  child: Text(
                    'I haven\'t an account',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF212121),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
