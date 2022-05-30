import 'package:fisheries/size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getpropotionalscreenheight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: kPrimarycolor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getpropotionalscreenwidth(18),
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
