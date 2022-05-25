import 'package:flutter/material.dart';
import 'package:task1/view/sign_in.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SignIn(),
      ),
    );
  }
}

