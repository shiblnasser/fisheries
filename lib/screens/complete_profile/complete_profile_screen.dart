import 'package:flutter/material.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routename = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Sign  Up'),
        centerTitle: true,
        leading: SizedBox(),
      ),
    body: Body(),
    );
  }
}
