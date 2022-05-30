import 'package:fisheries/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  static String routename = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
