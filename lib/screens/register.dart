import 'package:flutter/material.dart';
import 'package:hisny/Widgets/Rounded_Button.dart';
import 'package:hisny/constant/constant.dart';

class Register extends StatefulWidget {
  static const id = 'registerScreen';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                  child: Image.asset(
                'images/car1.png',
                height: 200,
              )),
              Theme(
                child: TextField(
                  cursorColor: Colors.grey[700],
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: KTextDecoration.copyWith(
                      hintText: 'Enter You Email',
                      prefixIcon: Icon(Icons.email)),
                ),
                data:
                    Theme.of(context).copyWith(primaryColor: Colors.grey[800]),
              ),
              SizedBox(
                height: 10,
              ),
              Theme(
                child: TextField(
                  cursorColor: Colors.grey[700],
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: KTextDecoration.copyWith(
                      prefixIcon: Icon(Icons.enhanced_encryption)),
                ),
                data:
                    Theme.of(context).copyWith(primaryColor: Colors.grey[800]),
              ),
              SizedBox(
                height: 15,
              ),
              RoundedButton(
                btnName: 'Register',
                color: Color(0xFFFFFFFF),
              )
            ],
          ),
        ),
      ),
    );
  }
}
