import 'package:flutter/material.dart';

import 'components/body.dart';
class Add_cart extends StatelessWidget {
  final List<int> added;
  static String routename = "/add_cart";

  const Add_cart({Key key, this.added}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text('Your Cart'),
            Text('3 items'),
          ],
        ),
      ),
      body: Body()
      
    );
  }
}