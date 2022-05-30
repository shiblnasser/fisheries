import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  static String routename = "/homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Body(),
      
    );
  }
}