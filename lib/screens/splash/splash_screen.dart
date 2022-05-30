import 'package:fisheries/screens/splash/components/body.dart';
import 'package:flutter/material.dart';
import 'package:fisheries/size_config.dart';

class Splashscreen extends StatelessWidget {
  static String routename = "/splash";
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
