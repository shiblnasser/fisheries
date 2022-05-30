import 'package:fisheries/screens/forget_password/foget_password_screen.dart';
import 'package:fisheries/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Dont have an account ?',
            style:TextStyle(
                fontSize: getpropotionalscreenwidth(16)
            )),
        GestureDetector(
          onTap:() =>Navigator.pushNamed(context, SignUpScreen.routename) ,
          child: Text('Sign Up',
              style:TextStyle(
                  fontSize: getpropotionalscreenwidth(16),
                  color: kPrimarycolor
              )),
        )
      ],
    );
  }
}
